const Record = require("../models/recordModel");
const Movie = require("../models/movieModel");

module.exports.getRecordByHistoryId = function (historyId) {
  return Record.findAll({
    where: { historyId: historyId },
    include: [
      {
        model: Movie,
        as: "Movie"
      }],
    raw: true,
  }).then(async (res) => {   
    Response = {
      code: 0,
      message: "",
      records: res,
    }
    return Response;
  })
    .catch(err => {
      Response = {
        code: 1,
        message: err,
        records: null
      }
      return Response;
    })
}
