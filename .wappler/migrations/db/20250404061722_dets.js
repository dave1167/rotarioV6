
exports.up = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.dropColumn('detsId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.integer('detsId');
    })
};
