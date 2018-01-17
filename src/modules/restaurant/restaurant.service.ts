import { Param, Component, Inject } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Restaurant } from './restaurant.entity';

@Component()
export class RestaurantService {
    constructor(
        @InjectRepository(Restaurant)
        private readonly restaurantRepository: Repository<Restaurant>,
      ) {}

    async findOne(@Param() params) {
        return await this.restaurantRepository.findOneById(params);
    }

}