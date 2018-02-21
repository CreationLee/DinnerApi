import { Param, Component, Inject } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Order } from './order.entity';
import { OrderDish } from '../orderDish/orderDish.entity';
import { Repository } from 'typeorm';
import { orderIntrface } from './order.interface';
import { CreateOrderDto } from './create-order.dto';

@Component()
export class OrderService {
    constructor(
        @InjectRepository(Order)
        private readonly orderRepository: Repository<Order>,
        @InjectRepository(OrderDish)
        private readonly orderDishRepository: Repository<OrderDish>
    ){}
    
    async createOrder(createOrderDto: CreateOrderDto){
        let order  = await this.saveOrder(createOrderDto.orderData);
        let orderDish = await this.saveOrderDish(order.id, createOrderDto.orderDishData)
    }

    async saveOrder(order: orderIntrface){
        order.create_at = new Date().getTime().toString();
        
        try{
          return await this.orderRepository.save(order);
        } catch(err) {
          return err;
        }        
    }

    saveOrderDish(orderId: number, orderDish){
        orderDish.forEach(dish => {
            dish.order_id = orderId;
            this.orderDishRepository.save(dish);
        });
    }

    async findUserOrder(@Param() params){
        let orders = await this.orderRepository.find({
            where: {customer_id: params},
            order: { "create_at": "DESC" },
        });

        return await this.sortOrder(orders);
    }

    sortOrder(orders){
        let that = this;
        let userOrders = {todayOrders: [], allOrders: []};
        let timeStamp = this.getTodayTimeStamp();
        orders.forEach(function(order,i){
            order.revertedTime = that.timestampTotime(order.create_at);
            if(order.create_at > timeStamp){
                userOrders.todayOrders.push(order);           
            }
        });
        userOrders.allOrders =  orders;

        return userOrders;
    }

    getTodayTimeStamp(){
        let time = new Date();
        time.setHours(0);
        time.setMinutes(0);
        time.setSeconds(0);
        time.setMilliseconds(0);
        return time.getTime().toString();
    }

    timestampTotime(date: any){
        var newDate = new Date(parseInt(date));
        return newDate.toLocaleString();
    }

}