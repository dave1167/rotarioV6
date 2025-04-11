
exports.up = function(knex) {
  return knex.schema
    .table('tbl_ek', async function (table) {
      table.dropColumn('userId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_ek', async function (table) {
      table.integer('userId');
    })
};
