
exports.up = function(knex) {
  return knex.schema
    .table('tbl_templates', async function (table) {
      table.integer('tenantId');
      table.integer('rotaId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_templates', async function (table) {
      table.dropColumn('tenantId');
      table.dropColumn('rotaId');
    })
};
