
exports.up = function(knex) {
  return knex.schema
    .table('tbl_user_tenant', async function (table) {
      table.integer('modifedBy');
      table.datetime('modifiedDate');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_user_tenant', async function (table) {
      table.dropColumn('modifedBy');
      table.dropColumn('modifiedDate');
    })
};
