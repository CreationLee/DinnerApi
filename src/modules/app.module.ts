import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Connection } from 'typeorm';
import { AppController } from './app.controller';
import { WxappApiModule } from './wxappapi.module';
import { RestaurantModule } from './restaurant.module';
import { DishModule } from './dish.module';
import { OrderModule } from './order.module';

@Module({
  imports: [TypeOrmModule.forRoot()],
  modules: [
    TypeOrmModule.forRoot(),
    WxappApiModule,
    RestaurantModule,
    DishModule,
    OrderModule
  ],
  controllers: 
  [
    AppController,
  ],
  components: [],
})
export class ApplicationModule { }
