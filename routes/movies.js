var express = require('express');
var router = express.Router();
const movieservice = require('../services/movieService');

/* GET movies listing. */
router.get('/', function(req, res, next) {
  console.log("test")
  movieservice.getAllMovies().then(movies=>
    res.send(movies));
});
router.get('/:id', function(req, res, next) {
  movieservice.getMoviebyId(req.params.id).then(movies=>
    res.send(movies));
});
router.post('/', function(req, res, next) {
  movieservice.addMovie(req.body).then(movies=>
    res.send(movies));
});
router.put('/:id', function(req, res, next) {
  movieservice.updateMovie(req.body,req.params.id).then(movies=>
    res.send(movies));
});
router.delete('/:id', function(req, res, next) {
  movieservice.deleteMovie(req.params.id).then(movies=>
    res.send(movies));
});

module.exports = router;