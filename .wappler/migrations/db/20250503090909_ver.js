
exports.up = function(knex) {
  return knex.schema
    .table('tbl_ek', async function (table) {
      table.string('ver');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_ek', async function (table) {
      table.dropColumn('ver');
    })
};
