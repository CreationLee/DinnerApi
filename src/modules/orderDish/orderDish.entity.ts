import { Entity, Column, OneToOne, OneToMany, PrimaryGeneratedColumn, ManyToOne, JoinColumn } from 'typeorm';
import { Order } from '../order/order.entity';
import { Dish } from '../dish/dish.entity';

@Entity('order_dishes')
export class OrderDish {
  @PrimaryGeneratedColumn()
  id: number;

  @Column('int')
  order_id: number;

  @Column('int')
  dish_id: string;

  @Column('text')
  dish_num: string;

  @Column('decimal')
  price: number;

  @ManyToOne(type => Order, Order=>Order.orderDishes)
  @JoinColumn({ name: 'order_id' })
  order: Order;

  @OneToOne(type=>Dish,{
    eager: true
  })
  @JoinColumn({name: 'dish_id'})
  dish: Dish;

}