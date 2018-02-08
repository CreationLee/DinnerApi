import { Entity, Column, PrimaryGeneratedColumn, ManyToOne, JoinColumn, OneToMany } from 'typeorm';
import { Order } from '../order/order.entity';

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

    @OneToMany(type => Order, Order => Order.customer)
    orders: Order[];

}