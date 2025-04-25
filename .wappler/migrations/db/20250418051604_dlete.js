
exports.up = function(knex) {
  return knex.schema
    .table('tbl_user_tenant', async function (table) {
      table.dropColumn('rota');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_user_tenant', async function (table) {
      table.integer('rota');
    })
};
