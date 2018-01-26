import { 
    Get, 
    Post,
    Body,
    Controller, 
    Query,
    Response,
    Res
} from '@nestjs/common';
import { WxappApiService } from './wxappapi.service';
import { SessionKeyDto } from './session-key.dto';

@Controller('WxAppApi')
export class WxappApiController {
    constructor(private readonly wxappApiService : WxappApiService) {}

    @Get('setUserSessionKey')
    setUserSessionKey(@Query() query, @Response() res) {
        this.wxappApiService.setUserSessionKey(query, res);
    }

    @Post('checkSignature')
    async checkSignature(@Body() sessionKeyDto: SessionKeyDto, @Res() res: Response){
        this.wxappApiService.checkSignature(sessionKeyDto);

        
    }

}