const Sequelize = require("sequelize");
const History = require('./historyModel')
const db = require("../DBConnection/connection");

const  movies = db.seq.define(
    "movies",
    {
        item_type:{
            type:Sequelize.STRING
        },
        item_name:{
            type:Sequelize.STRING
        },
        item_model:{
            type:Sequelize.STRING
        },
        item_qr:{
            type:Sequelize.STRING
        },
        item_status:{
            type:Sequelize.STRING
        },
        item_capacity:{
            type:Sequelize.STRING
        },
        item_image:{
            type:Sequelize.STRING
        }
    },
   { timestamps:false}
    
)
//movies.belongsTo(History, { as: "Movie", foreignKey: "itemId" });
//History.hasMany(movies, { as: "Movie", foreignKey: "id" });
// History.hasMany(movies,{as: 'movies', foreignKey: 'itemId'})
module.exports = movies;