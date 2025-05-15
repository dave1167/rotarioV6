
exports.up = function(knex) {
  return knex.schema
    .table('tbl_event_vol', async function (table) {
      table.date('modifiedDate');
      table.integer('modifiedBy');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_event_vol', async function (table) {
      table.dropColumn('modifiedDate');
      table.dropColumn('modifiedBy');
    })
};
