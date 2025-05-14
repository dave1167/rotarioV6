
exports.up = function(knex) {
  return knex.schema
    .table('tbl_settings', async function (table) {
      table.integer('rotaId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_settings', async function (table) {
      table.dropColumn('rotaId');
    })
};
