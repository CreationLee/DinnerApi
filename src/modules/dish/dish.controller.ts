import { Get, Controller, Query, Response, Param } from '@nestjs/common';
import { DishService } from './dish.service';

@Controller('dish')
export class DishController {
    constructor( private readonly dishService : DishService ) {}

    @Get(':id')
    async findDishes(@Param() params, @Response() res) {
        let dishes = await this.dishService.findDishes(params.id);
        res.status(200).send(dishes.dishCategories);
    }

}
