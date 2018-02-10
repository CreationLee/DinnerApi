import { Get, Post, Controller, Body, Res, Param, Response } from '@nestjs/common';
import { OrderService } from './order.service';
import { CreateOrderDto } from './create-order.dto';

@Controller('order')
export class OrderController {
    constructor(private readonly orderService: OrderService){}

    @Post('create')
    async createOrder(@Body() createOrderDto: CreateOrderDto, @Res() res) {
        this.orderService.createOrder(createOrderDto)
        res.status(200).send();
    }

    @Get(':userId')
    async userOrder(@Param() params, @Response() res){
        let userOrder = await this.orderService.findUserOrder(params.userId);
        res.status(200).send(userOrder);
    }
}