
exports.up = function(knex) {
  return knex.schema
    .table('tbl_tenants', async function (table) {
      table.integer('modifiedBy');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_tenants', async function (table) {
      table.dropColumn('modifiedBy');
    })
};
