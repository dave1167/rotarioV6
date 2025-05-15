
exports.up = function(knex) {
  return knex.schema
    .table('tbl_venue', async function (table) {
      table.integer('location');
    })
    .table('tbl_event_vol', async function (table) {
      table.string('status');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_event_vol', async function (table) {
      table.dropColumn('status');
    })
    .table('tbl_venue', async function (table) {
      table.dropColumn('location');
    })
};
