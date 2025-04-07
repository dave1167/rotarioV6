
exports.up = function(knex) {
  return knex.schema
    .table('tbl_user_tenant', async function (table) {
      table.integer('userId');
      table.integer('tenantId');
      table.integer('roleId');
      table.string('userName');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_user_tenant', async function (table) {
      table.dropColumn('userId');
      table.dropColumn('tenantId');
      table.dropColumn('roleId');
      table.dropColumn('userName');
    })
};
