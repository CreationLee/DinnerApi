import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from 'typeorm';
import { Dish } from '../dish/dish.entity';

@Entity('dish_categories')
export class DishCategories {
  @PrimaryGeneratedColumn()
  id: number;

  @Column('int')
  restaurant_id: number;

  @Column('text')
  name: string;

  @OneToMany(type => Dish, Dish => Dish.dishCategories)
  dish: Dish[];

}