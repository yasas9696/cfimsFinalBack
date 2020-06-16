const Sequelize = require("sequelize");
const db = require("../DBConnection/connection");
const movies = require('./movieModel')
const histories = require('./historyModel')

const records = db.seq.define(
  "records",
  {
    
    historyId: {
      type: Sequelize.STRING,
    },
    movieId: {
      type: Sequelize.STRING,
    },
  },
  { timestamps: false }
);

records.belongsTo(histories,{as:'Histoy',foreignKey:'historyId'})
records.belongsTo(movies,{as:'Movie',foreignKey:'movieId'})
histories.belongsToMany(movies,{through:records})
movies.belongsToMany(histories,{through:records})

module.exports = records;
