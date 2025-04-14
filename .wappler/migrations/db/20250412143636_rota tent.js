
exports.up = function(knex) {
  return knex.schema
    .table('tbl_rota_type', async function (table) {
      table.string('rotaDesc');
      table.integer('tentantId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_rota_type', async function (table) {
      table.dropColumn('rotaDesc');
      table.dropColumn('tentantId');
    })
};
