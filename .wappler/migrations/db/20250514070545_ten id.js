
exports.up = function(knex) {
  return knex.schema
    .table('tbl_location', async function (table) {
      table.integer('tenantId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_location', async function (table) {
      table.dropColumn('tenantId');
    })
};
