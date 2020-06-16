var express = require("express");
var router = express.Router();
const RecordService = require("../services/recordService");

// router.post("/historyId", function (req, res, next) {
//   console.log(req.body);
//   RecordService.getRecordByHistoryId(req.body).then((records) =>
//     res.send(records)
//   );

// });

router.get('/:historyId', function(req, res, next) {
  RecordService.getRecordByHistoryId(req.params.historyId).then(records=>
    res.send(records));
});

module.exports = router;
