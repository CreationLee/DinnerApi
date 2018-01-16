import { Module } from '@nestjs/common';
import { RestaurantController } from './restaurant/restaurant.controller';
import { RestaurantService } from './restaurant/restaurant.service';

@Module({
    controllers :[RestaurantController],
    components : [RestaurantService],
})
export class RestaurantModule {}