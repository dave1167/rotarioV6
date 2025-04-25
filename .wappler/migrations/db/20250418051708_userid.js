
exports.up = function(knex) {
  return knex.schema
    .table('tbl_rota', async function (table) {
      table.undefined('tenantId');
      table.undefined('rota');
      table.string('userId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_rota', async function (table) {
      table.dropColumn('tenantId');
      table.dropColumn('rota');
      table.dropColumn('userId');
    })
};
