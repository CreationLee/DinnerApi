import { Entity, Column, PrimaryGeneratedColumn, OneToMany, ManyToOne, JoinColumn } from 'typeorm';
import { Dish } from '../dish/dish.entity';
import { Restaurant } from '../restaurant/restaurant.entity';

@Entity('dish_categories')
export class DishCategories {
  @PrimaryGeneratedColumn()
  id: number;

  @Column('int')
  restaurant_id: number;

  @Column('text')
  name: string;

  @OneToMany(type => Dish, Dish => Dish.dishCategories, {
    eager: true
  })
  dish: Dish[];

  @ManyToOne(type => Restaurant, Restaurant => Restaurant.dishCategories)
  @JoinColumn({ name: 'restaurant_id' })
  restaurant: Restaurant[];

}