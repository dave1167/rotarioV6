
exports.up = function(knex) {
  return knex.schema
    .table('tbl_user_tenant', async function (table) {
      table.renameColumn('id', 'usrTenId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_user_tenant', async function (table) {
      table.renameColumn('usrTenId', 'id');
    })
};
