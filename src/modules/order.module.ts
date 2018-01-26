import { Module, Component } from '@nestjs/common';
import { OrderController } from './order/order.controller';
import { OrderService } from './order/order.service';

@Module({

    controllers: [OrderController],
    components: [OrderService]

})
export class OrderModule {}