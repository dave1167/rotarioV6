
exports.up = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.string('hashAuth').comment('used for encryption taken from orig pasword');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.dropColumn('hashAuth');
    })
};
