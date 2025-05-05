
exports.up = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.boolean('active');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.dropColumn('active');
    })
};
