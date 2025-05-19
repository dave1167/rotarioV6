
exports.up = function(knex) {
  return knex.schema
    .table('tbl_event_vol_status', async function (table) {
      table.string('desc');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_event_vol_status', async function (table) {
      table.dropColumn('desc');
    })
};
