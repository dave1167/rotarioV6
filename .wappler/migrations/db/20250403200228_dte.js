
exports.up = function(knex) {
  return knex.schema
    .table('tbl_tenants', async function (table) {
      table.date('modifiedDate').alter();
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_tenants', async function (table) {
      table.integer('modifiedDate').alter();
    })
};
