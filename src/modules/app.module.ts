import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { WxappApiModule } from './wxappapi.module';
import { RestaurantModule } from './restaurant.module';

@Module({
  modules: [WxappApiModule, RestaurantModule],
  controllers: 
  [
    AppController,
  ],
  components: [],
})
export class ApplicationModule {}
