import { IsString, IsNumber } from 'class-validator';

export class CreateCustomerDto{
    @IsString() readonly nickName: String;
    @IsNumber() readonly gender: number;
    @IsString() readonly city?: String;
    @IsString() readonly province?: String;
    @IsString() readonly country?: String;
    @IsString() readonly avatarUrl: String;    
}