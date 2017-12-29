import { 
    Get, 
    Controller, 
    Query
} from '@nestjs/common';
import { WxappApiService } from './wxappapi.service';


@Controller('WxAppApi')
export class WxappApiController {
    constructor(private readonly wxappApiService : WxappApiService) {}

    @Get('setUserSessionKey')
    async setUserSessionKey(@Query() query) {
        this.wxappApiService.setUserSessionKey(query);
        console.log(query.code);
    }
}