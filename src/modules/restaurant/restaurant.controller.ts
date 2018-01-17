import { Get, Controller, Query, Response, Param, Body} from '@nestjs/common';
import { RestaurantService } from './restaurant.service';
import { Restaurant } from './restaurant.entity';

@Controller('restaurant')
export class RestaurantController {
    constructor(private readonly restaurantService : RestaurantService) {}

    @Get(':id')
    async find(@Param() params, @Response() res): Promise<Restaurant> {
        let re = await this.restaurantService.findOne(params.id);  
        console.log('re',re);
        return re;
    }
}