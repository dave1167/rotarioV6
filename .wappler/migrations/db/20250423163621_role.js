
exports.up = function(knex) {
  return knex.schema
    .table('tbl_user_role', async function (table) {
      table.integer('role');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_user_role', async function (table) {
      table.dropColumn('role');
    })
};
