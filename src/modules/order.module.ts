import { Module, Component } from '@nestjs/common';
import { OrderController } from './order/order.controller';
import { OrderService } from './order/order.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Order } from './order/order.entity';
import { OrderDish } from './orderDish/orderDish.entity';

@Module({
    imports: [TypeOrmModule.forFeature([Order,OrderDish])],
    controllers: [OrderController],
    components: [OrderService]
})
export class OrderModule {}