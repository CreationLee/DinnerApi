import { Entity, Column, PrimaryGeneratedColumn, ManyToOne, JoinColumn, OneToMany } from 'typeorm';
import { Restaurant } from '../restaurant/restaurant.entity';
import { Dish } from '../dish/dish.entity';

@Entity('dish_categories')
export class DishCategories {
  @PrimaryGeneratedColumn()
  id: number;

  @Column('text')
  name: string;

  @ManyToOne(type => Restaurant, Restaurant => Restaurant.dishCategories)
  @JoinColumn({ name: 'restaurant_id' })
  restaurant: Restaurant;

  @OneToMany(type => Dish, Dish => Dish.dishCategories, {
    eager: true
  })
  dishes: Dish[];

}