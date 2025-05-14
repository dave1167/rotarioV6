
exports.up = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.integer('location5');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.dropColumn('location5');
    })
};
