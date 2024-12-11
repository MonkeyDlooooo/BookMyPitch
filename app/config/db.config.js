require('dotenv').config();
const Sequelize = require('sequelize');
// Khởi tạo kết nối MySQL thông qua thông tin từ process.env
const sequelize = new Sequelize(
  'bookmypitch', 
  'root', 
  '', {
    dialect: 'mysql',
    host: "localhost",
    logging: false, // tắt log
  }
);

module.exports = sequelize;