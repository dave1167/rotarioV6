
exports.up = function(knex) {
  return knex.schema
    .table('tbl_user_dets', async function (table) {
      table.string('emgcyCntctTel');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_user_dets', async function (table) {
      table.dropColumn('emgcyCntctTel');
    })
};
