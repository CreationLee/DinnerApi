import { Component, Query, Response} from '@nestjs/common';


@Component()
export class WxappApiService {
    private readonly url = "https://api.weixin.qq.com/sns/jscode2session?appid=wxe0fdae328482d4ba&secret=6a9ce90d3205537185687ccca3371440&js_code=JSCODE&grant_type=authorization_code";

    private data = {};
    private https = require('https');

    setUserSessionKey(@Query() query, @Response() res) {


      let ur = "https://api.weixin.qq.com/sns/jscode2session?appid=wxe0fdae328482d4ba&secret=6a9ce90d3205537185687ccca3371440&js_code="+query.code+"&grant_type=authorization_code";
      console.log('ur',ur);
      this.https.get(ur,  ( res ) => {
        
        res.on('data', (d) => {
        
          let sessionkey = d.toString();
          console.log('finally', sessionkey);
          return sessionkey;
        });
      })
        

    }
}