import { Entity, Column, PrimaryGeneratedColumn, ManyToOne, JoinColumn } from 'typeorm';

@Entity('customers')
export class Customer {
    @PrimaryGeneratedColumn()
    id: number

    @Column()
    openid: String

    @Column()
    info: String

    @Column()
    create_at: String

}