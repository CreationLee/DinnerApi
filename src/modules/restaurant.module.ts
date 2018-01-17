import { Module } from '@nestjs/common';
import { RestaurantController } from './restaurant/restaurant.controller';
import { RestaurantService } from './restaurant/restaurant.service';
import { Restaurant } from './restaurant/restaurant.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
    imports: [TypeOrmModule.forFeature([Restaurant])],
    controllers :[RestaurantController],
    components : [RestaurantService],
})
export class RestaurantModule {}