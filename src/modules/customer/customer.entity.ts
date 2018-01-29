import { Entity, Column, PrimaryGeneratedColumn, ManyToOne, JoinColumn } from 'typeorm';

@Entity('customers')
export class Customer {
    @PrimaryGeneratedColumn()
    id: number

    @Column('text')
    openid: String

    @Column('text')
    info: String

    @Column()
    create_at: String

}