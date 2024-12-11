const Sequelize = require('sequelize');
const sequelize = new Sequelize('zpwmkh7e6o5f_bookmypitch', 'zpwmkh7e6o5f_huynhchitin', '13082002Tin@@', {
  dialect: 'mysql',
  host: '137.59.105.46',
  logging: false, // tắt log
});

module.exports = sequelize;