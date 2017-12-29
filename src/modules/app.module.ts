import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { CatsController } from './cats.controller';
import { WxappApiController } from './wxapi/wxappapi.controller';

@Module({
  modules: [],
  controllers: 
  [
    AppController,
    CatsController,
    WxappApiController,
  ],
  components: [],
})
export class ApplicationModule {}
