
exports.up = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.string('key', 255).alter();
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.string('key', 8).alter();
    })
};
