
exports.up = function(knex) {
  return knex.schema
    .table('tbl_user_tenant', async function (table) {
      table.dropColumn('userName');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_user_tenant', async function (table) {
      table.string('userName', 255);
    })
};
