
exports.up = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.date('eventDate');
      table.time('eventStrtTime');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.dropColumn('eventDate');
      table.dropColumn('eventStrtTime');
    })
};
