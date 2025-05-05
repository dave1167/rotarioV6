
exports.up = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.boolean('verified');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.dropColumn('verified');
    })
};
