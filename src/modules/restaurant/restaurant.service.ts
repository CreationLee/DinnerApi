import { Param, Component, Inject } from '@nestjs/common';

import { Repository } from 'typeorm';
import { Restaurant } from './restaurant.entity';

@Component()
export class RestaurantService {
    constructor(
        @Inject(Restaurant)
        private readonly restaurantRepository: Repository<Restaurant>,
    ){}

    async findOne(@Param() params): Promise< Restaurant > {
        return await this.restaurantRepository.findOneById(params.id);
    }

}