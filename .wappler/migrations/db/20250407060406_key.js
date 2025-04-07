
exports.up = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.renameColumn('hashAuth', 'key');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.renameColumn('key', 'hashAuth');
    })
};
