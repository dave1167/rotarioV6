
exports.up = function(knex) {
  return knex.schema
    .table('tbl_user_rota', async function (table) {
      table.string('role');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_user_rota', async function (table) {
      table.dropColumn('role');
    })
};
