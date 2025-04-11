
exports.up = function(knex) {
  return knex.schema
    .table('tbl_roles', async function (table) {
      table.string('tennantId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_roles', async function (table) {
      table.dropColumn('tennantId');
    })
};
