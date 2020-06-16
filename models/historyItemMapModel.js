const Sequelize = require("sequelize");
const db = require("../DBConnection/connection");

const  historyitemmap = db.seq.define(
    "historyitemmap",
    {
        historyId:{
            type:Sequelize.INTEGER
        },
        itemId:{
            type:Sequelize.INTEGER
        }
    },
   { timestamps:false}
    
)
module.exports = historyitemmap;