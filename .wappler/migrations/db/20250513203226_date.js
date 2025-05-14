
exports.up = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.datetime('modifiedDate');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.dropColumn('modifiedDate');
    })
};
