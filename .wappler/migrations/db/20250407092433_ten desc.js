
exports.up = function(knex) {
  return knex.schema
    .raw(knex.client.constructor.name.startsWith('Client_PG') ? 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp"' : 'SELECT 1')
    .createTable('tbl_tenants', async function (table) {
      table.uuid('tenId').primary().defaultTo(knex.client.constructor.name.startsWith('Client_PG') ? knex.raw('uuid_generate_v4()')
              : (knex.client.constructor.name.includes('MSSQL') ? knex.raw('NEWID()')
                : (knex.client.constructor.name.includes('MySQL') ? knex.raw('(UUID())') : null)));
      table.string('tenantDesc');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_tenants')
};
