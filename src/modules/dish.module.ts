import { Module } from '@nestjs/common';
import { DishController } from './dish/dish.controller';
import { DishService } from './dish/dish.service';
import { Dish } from './dish/dish.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
    imports : [ TypeOrmModule.forFeature([Dish]) ],
    components : [ DishService ],
    controllers : [ DishController ]
})
export class DishModule {}
