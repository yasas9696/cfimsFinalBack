const History = require("../models/historyModel");

module.exports.addHistory = function(newHistory){
    console.log(newHistory)
    let{

        date,
        event,
        jobNumber,
        department,
        empNo
        
        
    } = newHistory;
    return History.create({ date,
        event,
        jobNumber,
        department,
        empNo})
        .then(res=>{Response={
            code:0,
            message:'',
            result:res

        }
        return Response;})

        .catch(err =>{Response={
            code:1,
            message:err.original.sqlMessage,
            result:null}
        return Response     
        })

}

module.exports.updateHistory = function(histories,id){
    let{
        date,
        event,
        jobNumber,
        department,
        empNo
    } = histories;
    return History.update({  date,
        event,
        jobNumber,
        department,
        empNo},{where:{id:id}})
        .then(res=>{Response={
            code:0,
            message:'',
            result:res

        }
        return Response;})

        .catch(err =>{Response={
            code:1,
            message:err.original.sqlMessage,
            result:null}
        return Response
        })

}
module.exports.getAllHistorys = function(){
    return History.findAll().then(res=>{Response={
        code:0,
        message:'',
        history: res

    }
    return Response;})

        .catch(err =>{Response={
            code:1,
            message:err.original.sqlMessage,
            result:null
    
        }
        return Response;})
}

module.exports.deleteHistory = function(id){
    return History.destroy({
        where:{id:id},
    }).then(res=>{
        Response={
            code:0,
            message:'',
            result:res

        }
        return Response;
    })
    .catch(err =>{Response={
        code:1,
        message:err,
        result:null

    }
    return Response;})
}

module.exports.getHistorybyId = function(id){
    return History.findOne({
        where:{id:id},
        raw:true
    }).then(res=>{
        Response={
            code:0,
            message:'',
            result:res

        }
        return Response;
    })
    .catch(err =>{Response={
        code:1,
        message:err,
        result:null

    }
    return Response;})
}