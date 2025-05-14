
exports.up = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.integer('location').unsigned();
      table.foreign('location').references('locationId').inTable('tbl_location');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.dropForeign('location');
      table.dropColumn('location');
    })
};
