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
        let customer = pc.decryptData(sessionKeyDto.encryptedData, sessionKeyDto.iv);
        let str = JSON.stringify(customer) 

        let result = await this.checkUser(customer);

        if(result == undefined) {
          let save = await this.saveUser(customer);
          return save;
        }

        return result;
    }

    async checkUser(customer: Customer){
      return await this.customerRepository.findOne({openid: customer.openId});
    }

    async saveUser(customer: Customer){
      let myDate = require('silly-datetime');
      var time = myDate.format(new Date(), 'YYYY-MM-DD HH:mm:ss');

      return await this.customerRepository.save({
        openid: customer.openId,
        info: JSON.stringify(customer),
        create_at: time
      });
    }
}