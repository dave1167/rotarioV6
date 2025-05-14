
exports.up = function(knex) {
  return knex.schema
    .table('tbl_email', async function (table) {
      table.integer('sender');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_email', async function (table) {
      table.dropColumn('sender');
    })
};
