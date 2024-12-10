require('dotenv').config();
const Sequelize = require('sequelize');
// Khởi tạo kết nối MySQL thông qua thông tin từ process.env
const sequelize = new Sequelize(
  process.env.DB_NAME, 
  process.env.DB_USER, 
  process.env.DB_PASS, {
    dialect: 'mysql',
    host: process.env.DB_HOST,
    logging: false, // tắt log
  }
);

module.exports = sequelize;