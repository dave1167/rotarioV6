
exports.up = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.dropColumn('venue');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.string('venue', 255);
    })
};
