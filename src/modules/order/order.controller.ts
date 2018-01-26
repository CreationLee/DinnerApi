import { Get, Post, Controller, Query, Response, Param } from '@nestjs/common';
import { OrderService } from './order.service';

@Controller('order')
export class OrderController {
    constructor(private readonly orderService: OrderService){}

    @Post()
    async createOrder() {

    }
}