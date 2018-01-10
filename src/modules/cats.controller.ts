import { Get, Controller } from '@nestjs/common';

@Controller('cats')
export class CatsController {
  @Get()
  root(): string {
    return 'Hell cat!';
  }
}