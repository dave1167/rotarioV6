
exports.up = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.string('location');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.dropColumn('location');
    })
};
