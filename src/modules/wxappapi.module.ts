import { Module } from '@nestjs/common';
import { WxappApiController } from './wxapi/wxappapi.controller';
import { WxappApiService } from './wxapi/wxappapi.service';

@Module({
    controllers :[WxappApiController],
    components : [WxappApiService],
})
export class WxappApiModule {}