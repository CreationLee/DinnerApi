import { Entity, Column, PrimaryGeneratedColumn, OneToMany } from 'typeorm';
import { DishCategories } from '../category/category.entity';

@Entity('restaurants')
export class Restaurant {
  @PrimaryGeneratedColumn()
  id: number;

  @Column('text')
  name: string;

  @Column('text')
  logo: string;

  @Column('text')
  announce: string;

  @Column('int')
  table_num: number;

  @OneToMany(type => DishCategories, DishCategories => DishCategories.restaurant, {
    eager: true
  })
  dishCategories: DishCategories[];
  
}