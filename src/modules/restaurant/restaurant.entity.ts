import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

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
  
}