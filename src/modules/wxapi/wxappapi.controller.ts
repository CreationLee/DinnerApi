import { 
    Get, 
    Controller, 
    Query,
    Response
} from '@nestjs/common';
import { WxappApiService } from './wxappapi.service';


@Controller('WxAppApi')
export class WxappApiController {
    constructor(private readonly wxappApiService : WxappApiService) {}

    @Get('setUserSessionKey')
    async setUserSessionKey(@Query() query, @Response() res) {
        this.wxappApiService.setUserSessionKey(query, res);
        console.log(query.code);
    }
}