
exports.up = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.timestamp('dateModified').alter();
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.date('dateModified').alter();
    })
};
