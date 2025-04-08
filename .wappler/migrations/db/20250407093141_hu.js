
exports.up = function(knex) {
  return knex.schema
    .dropTable('tbl_tenant_address')

};

exports.down = function(knex) {
  return knex.schema
    .createTable('tbl_tenant_address', async function (table) {
      table.increments('tenDetsId').primary().notNullable();
    })
};
