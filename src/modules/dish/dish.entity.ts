import { Entity, Column, PrimaryGeneratedColumn, ManyToOne, JoinColumn } from 'typeorm';
import { DishCategories } from '../category/category.entity';
import { OrderDish } from '../orderDish/orderDish.entity';

@Entity('dishes')
export class Dish {
  @PrimaryGeneratedColumn()
  id: number;

  @Column('int')
  dish_catgory_id: number;

  @Column('text')
  name: string;

  @Column('text')
  photo: string;

  @Column('decimal')
  price: number;

  @Column('int')
  is_recommend: number;

  @ManyToOne(type => DishCategories, DishCategories => DishCategories.dishes)
  @JoinColumn({ name: 'dish_catgory_id' })
  dishCategories: DishCategories;

  
}