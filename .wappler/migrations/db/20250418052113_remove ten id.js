
exports.up = function(knex) {
  return knex.schema
    .table('tbl_roles_type', async function (table) {
      table.dropColumn('tennantId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_roles_type', async function (table) {
      table.string('tennantId', 255);
    })
};
