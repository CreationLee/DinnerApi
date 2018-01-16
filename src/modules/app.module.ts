import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { WxappApiModule } from './wxappapi.module'

@Module({
  modules: [WxappApiModule],
  controllers: 
  [
    AppController,
  ],
  components: [],
})
export class ApplicationModule {}
