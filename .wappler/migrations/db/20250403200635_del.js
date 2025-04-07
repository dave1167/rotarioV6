
exports.up = function(knex) {
  return knex.schema
    .table('tbl_tenants', async function (table) {
      table.dropColumn('updated_at');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_tenants', async function (table) {
      table.timestamp('updated_at').defaultTo(knex.fn.now());
    })
};
