import { Component, Query, Response} from '@nestjs/common';


@Component()
export class WxappApiService {
    private https = require('https');

    setUserSessionKey(@Query() query, @Response() res) {

      let url = "https://api.weixin.qq.com/sns/jscode2session?appid=wxe0fdae328482d4ba&secret=6a9ce90d3205537185687ccca3371440&js_code="+query.code+"&grant_type=authorization_code";
      
      let req = this.https.get(url,  ( feedback ) => {
        let data = {};
        
        feedback.on('data', (d) => {
          let sessionkey = d.toString();
          data = sessionkey; 
        })
        .on('end',function () {
          res.status(200).send(data); 
        });
      
      });

    }
}