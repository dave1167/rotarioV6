
exports.up = function(knex) {
  return knex.schema
    .table('tbl_settings', async function (table) {
      table.integer('newUserTemplate');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_settings', async function (table) {
      table.dropColumn('newUserTemplate');
    })
};
