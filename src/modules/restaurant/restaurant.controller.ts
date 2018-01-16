import { Get, Controller, Query, Response, Param, Body} from '@nestjs/common';
import { RestaurantService } from './restaurant.service';
import { Restaurant } from './restaurant.entity';

@Controller('restaurant')
export class RestaurantController {
    constructor(private readonly restaurantService : RestaurantService) {}

    @Get(':id')
    find(@Param() params, @Response() res) {
        return this.restaurantService.findOne(params.id);  
    }
}