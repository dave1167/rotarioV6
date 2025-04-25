
exports.up = function(knex) {
  return knex.schema
    .table('tbl_roles_type', async function (table) {
      table.dropColumn('tenantId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_roles_type', async function (table) {
      table.integer('tenantId');
    })
};
