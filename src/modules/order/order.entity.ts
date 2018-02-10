import { Entity, Column, PrimaryGeneratedColumn, OneToMany, ManyToOne, JoinColumn } from 'typeorm';
import { Customer } from '../customer/customer.entity';
import { OrderDish } from '../orderDish/orderDish.entity';

@Entity('orders')
export class Order {
    @PrimaryGeneratedColumn()
    id: number;

    @Column('int')
    restaurant_id: number;

    @Column('int')
    customer_id: number;

    @Column('int')
    order_status: number;

    @Column('int')
    type: number;

    @Column('int')
    table_id: number;

    @Column('int')
    customer_number: number;

    @Column('int')
    pay_type: number;

    @Column('decimal')
    cost: number;

    @Column('decimal')
    paid: number;

    @Column()
    create_at: String;

    @ManyToOne(type => Customer, Customer => Customer.orders)
    @JoinColumn({ name: 'restaurant_id' })
    customer: Customer;

    @OneToMany(type => OrderDish, OrderDish=>OrderDish.order,{
        eager: true
    })
    orderDishes: OrderDish[];
}