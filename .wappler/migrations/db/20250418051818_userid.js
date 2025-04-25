
exports.up = function(knex) {
  return knex.schema
    .table('tbl_rota', async function (table) {
      table.integer('userId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_rota', async function (table) {
      table.dropColumn('userId');
    })
};
