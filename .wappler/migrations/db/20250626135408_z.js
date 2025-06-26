
exports.up = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.integer('volArrival').defaultTo(0).alter();
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.integer('volArrival').defaultTo().alter();
    })
};
