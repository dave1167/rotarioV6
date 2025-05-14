
exports.up = function(knex) {
  return knex.schema
    .table('tbl_templates', async function (table) {
      table.text('tempDesc');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_templates', async function (table) {
      table.dropColumn('tempDesc');
    })
};
