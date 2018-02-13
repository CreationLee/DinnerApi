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
        return await this.orderRepository.find({
            where: {customer_id: params},
            order: { "create_at": "DESC" },
        });
    }

}