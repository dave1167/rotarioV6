
exports.up = function(knex) {
  return knex.schema
    .dropTable('tbl_user_role')

};

exports.down = function(knex) {
  return knex.schema
    .createTable('tbl_user_role', async function (table) {
      table.increments('roleId').primary().notNullable();
      table.integer('tenantId').unsigned();
      table.foreign('tenantId').references('tenId').inTable('tbl_tenants');
      table.integer('role').unsigned();
      table.foreign('role').references('role').inTable('tbl_roles_type');
      table.timestamp('modifiedDate');
      table.integer('modifiedBy');
      table.integer('userId').unsigned();
      table.foreign('userId').references('userId').inTable('tbl_users');
      table.integer('rota').unsigned();
      table.foreign('rota').references('rotaId').inTable('tbl_rota_type');
    })
};
