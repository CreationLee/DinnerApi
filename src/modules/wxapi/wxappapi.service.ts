import { Component, Query, Response} from '@nestjs/common';


@Component()
export class WxappApiService {
    private readonly url = "https://api.weixin.qq.com/sns/jscode2session?appid=wxe0fdae328482d4ba&secret=6a9ce90d3205537185687ccca3371440&js_code=JSCODE&grant_type=authorization_code";

    private data = {};

    setUserSessionKey(@Query() query, @Response() res) {
        if(query.code.length<=0) {
            res.end();
        }

        this.data = res.location(this.url);
        console.log(this.data);

    }
}