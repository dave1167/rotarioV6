
exports.up = function(knex) {
  return knex.schema
    .table('tbl_roles_type', async function (table) {
      table.renameColumn('name', 'roleName');
    })
    .renameTable('tbl_rota', 'tbl_user_rota')

};

exports.down = function(knex) {
  return knex.schema
    .renameTable('tbl_user_rota', 'tbl_rota')
    .table('tbl_roles_type', async function (table) {
      table.renameColumn('roleName', 'name');
    })
};
