var express = require('express');
var router = express.Router();


router.get('/', function(req, res, next) {
  console.log(req.body)
  HistoryService.getAllHistorys().then(history=>
    res.send(history));
});
router.get('/:id', function(req, res, next) {
  res.send('respond with a resource');
});
router.post('/', function(req, res, next) {
  console.log(req.body)
  historyService.addHistory(req.body).then(history=>
    res.send(history));
});
router.put('/:id', function(req, res, next) {

  historyService.updateHistory(req.body,req.params.id).then(historys=>
    res.send(historys));
  
});
router.delete('/:id', function(req, res, next) {
  historyService.deleteHistory(req.params.id).then(historys=>
    res.send(historys));
 
});

module.exports = router;