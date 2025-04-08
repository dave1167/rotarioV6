
exports.up = function(knex) {
  return knex.schema
    .dropTable('tbl_tenants')

};

exports.down = function(knex) {
  return knex.schema
    .createTable('tbl_tenants', async function (table) {
      table.increments('tenantId').primary().notNullable();
      table.string('name', 255).notNullable();
      table.date('modifiedDate').defaultTo(knex.fn.now());
      table.integer('modifiedBy');
    })
};
