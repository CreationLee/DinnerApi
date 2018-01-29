import { IsString, Length, IsNumber } from 'class-validator';

export class CreateOrderDto{
    orderData: {
        customer_id: number;
        restaurant_id: number;
        order_status: number;
        type: number;
        pay_type: number;
        cost: number;
        paid: number;
    };
    orderDishData: {};   
}