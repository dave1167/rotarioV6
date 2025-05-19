
exports.up = function(knex) {
  return knex.schema
    .table('tbl_event_vol', async function (table) {
      table.date('registeredDate');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_event_vol', async function (table) {
      table.dropColumn('registeredDate');
    })
};
