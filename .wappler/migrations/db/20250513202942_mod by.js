
exports.up = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.string('venue');
      table.integer('modifiedBy');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.dropColumn('venue');
      table.dropColumn('modifiedBy');
    })
};
