import { Get, Post, Controller, Body } from '@nestjs/common';
import { OrderService } from './order.service';
import { CreateOrderDto } from './create-order.dto';

@Controller('order')
export class OrderController {
    constructor(private readonly orderService: OrderService){}

    @Post('create')
    async createOrder(@Body() createOrderDto: CreateOrderDto) {
        console.log('createOrderDto',createOrderDto);

    }
}