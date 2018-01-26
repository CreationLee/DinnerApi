import { Component, Query, Response} from '@nestjs/common';
import { SessionKeyDto } from './session-key.dto';
import { Customer } from '../customer/customer.interface';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Customer as CustomerEntity } from '../customer/customer.entity';


@Component()
export class WxappApiService {
    constructor(
      @InjectRepository(CustomerEntity)
      private readonly customerRepository: Repository<CustomerEntity>
    ){}

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

    async checkSignature(sessionKeyDto: SessionKeyDto){
        var WXBizDataCrypt = require('../../utils/WXBizDataCrypt');
        let pc = new WXBizDataCrypt('wxe0fdae328482d4ba',sessionKeyDto.rd_session);
        var customer = pc.decryptData(sessionKeyDto.encryptedData, sessionKeyDto.iv);
        

    }

    async checkUser(customer: Customer){

    }
}