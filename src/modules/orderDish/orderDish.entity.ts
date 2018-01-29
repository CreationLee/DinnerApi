import { Entity, Column, PrimaryGeneratedColumn, ManyToOne, JoinColumn } from 'typeorm';

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
  
}