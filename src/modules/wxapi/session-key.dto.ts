import { IsString } from 'class-validator';

export class SessionKeyDto {
    @IsString() readonly rd_session: string;
    @IsString() readonly encryptedData: string;
    @IsString() readonly iv: string;
}