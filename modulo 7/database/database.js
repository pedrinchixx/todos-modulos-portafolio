import Sequelize from 'sequelize';

export const sequelize = new Sequelize('tienda', 'postgres', '123456', {
  host: 'localhost',
  dialect: 'postgres'
})