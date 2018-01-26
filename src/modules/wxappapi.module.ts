import { Module } from '@nestjs/common';
import { WxappApiController } from './wxapi/wxappapi.controller';
import { WxappApiService } from './wxapi/wxappapi.service';
import { Customer } from './customer/customer.entity';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
    imports: [TypeOrmModule.forFeature([Customer])],
    controllers :[WxappApiController],
    components : [WxappApiService],
})
export class WxappApiModule {}