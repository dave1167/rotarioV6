
exports.up = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.integer('volArrival');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.dropColumn('volArrival');
    })
};
