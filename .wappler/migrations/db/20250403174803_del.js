
exports.up = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.dropColumn('username');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.string('username', 100).notNullable();
    })
};
