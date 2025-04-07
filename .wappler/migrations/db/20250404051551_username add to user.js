
exports.up = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.string('userName');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.dropColumn('userName');
    })
};
