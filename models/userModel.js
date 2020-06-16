const Sequelize = require("sequelize");
const db = require("../DBConnection/connection");

const  User = db.seq.define(
    "users",
    {
        
        username:{
            type:Sequelize.STRING
        },
      
        email:{
            type:Sequelize.STRING

        },
        password:{
            type:Sequelize.STRING
        },
        name:{
            type:Sequelize.STRING
        },
        dept:{
            type:Sequelize.STRING

        },
        type:{
            type:Sequelize.STRING
        }
    },
   { timestamps:false}
    
)
module.exports = User;