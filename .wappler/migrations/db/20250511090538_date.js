
exports.up = function(knex) {
  return knex.schema
    .table('tbl_templates', async function (table) {
      table.integer('modifiedBy');
      table.datetime('modifiedDate');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_templates', async function (table) {
      table.dropColumn('modifiedBy');
      table.dropColumn('modifiedDate');
    })
};
