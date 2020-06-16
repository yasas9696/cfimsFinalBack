const Movie = require("../models/movieModel");

module.exports.addMovie = function(newMovie){
    console.log(newMovie)
    let{
        item_type,
        item_name,
        item_model,
        item_qr,
        item_status,
        item_capacity,
        item_image
    } = newMovie;
    return Movie.create({ item_type,
        item_name,
        item_model,
        item_qr,
        item_status,
        item_capacity,
        item_image})
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

module.exports.updateMovie = function(movie,id){
    let{
        item_type,
        item_name,
        item_model,
        item_qr,
        item_status,
        item_capacity,
        item_image
    } = movie;
    return Movie.update({ item_type,
        item_name,
        item_model,
        item_qr,
        item_status,
        item_capacity,
        item_image},{where:{id:id}})
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
module.exports.getAllMovies = function(){
    console.log("test")
    return Movie.findAll().then(res=>{Response={
        code: 0,
        message: '',
        movie: res

    }
    return Response;
}
)

        .catch(err =>{Response={
            code:1,
            message:err.original.sqlMessage,
            result:null
    
        }
        return Response;})
}

module.exports.deleteMovie = function(id){
    return Movie.destroy({
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

module.exports.getMoviebyId = function(id){
    return Movie.findOne({
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