
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_rota', async function (table) {
      table.increments('rotaId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_rota')
};
