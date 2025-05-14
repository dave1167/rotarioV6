
exports.up = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.integer('venue').unsigned();
      table.foreign('venue').references('venueId').inTable('tbl_venue');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.dropForeign('venue');
      table.dropColumn('venue');
    })
};
