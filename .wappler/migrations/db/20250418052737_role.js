
exports.up = function(knex) {
  return knex.schema
    .table('tbl_user_role', async function (table) {
      table.integer('tenantId');
      table.integer('role');
      table.timestamp('modifiedDate');
      table.integer('modifiedBy');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_user_role', async function (table) {
      table.dropColumn('tenantId');
      table.dropColumn('role');
      table.dropColumn('modifiedDate');
      table.dropColumn('modifiedBy');
    })
};
