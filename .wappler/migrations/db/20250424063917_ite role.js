
exports.up = function(knex) {
  return knex.schema
    .table('tbl_user_rota', async function (table) {
      table.integer('role').alter();
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_user_rota', async function (table) {
      table.string('role', 255).alter();
    })
};
