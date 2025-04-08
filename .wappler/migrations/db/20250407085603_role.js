
exports.up = function(knex) {
  return knex.schema
    .table('tbl_roles', async function (table) {
      table.integer('role');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_roles', async function (table) {
      table.dropColumn('role');
    })
};
