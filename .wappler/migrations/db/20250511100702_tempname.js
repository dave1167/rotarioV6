
exports.up = function(knex) {
  return knex.schema
    .table('tbl_templates', async function (table) {
      table.string('tempName');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_templates', async function (table) {
      table.dropColumn('tempName');
    })
};
