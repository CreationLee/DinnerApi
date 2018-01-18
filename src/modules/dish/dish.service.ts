import { Param, Component, Inject } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Dish } from './dish.entity';

@Component()
export class DishService {
    constructor(
        @InjectRepository(Dish)
        private readonly dishRepository : Repository<Dish>,
    ){}

    async findDishes(@Param() params) {
        return await this.dishRepository.findOneById(params);
    }

}