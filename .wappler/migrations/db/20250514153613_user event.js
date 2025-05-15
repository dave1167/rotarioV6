
exports.up = function(knex) {
  return knex.schema
    .table('tbl_event_vol', async function (table) {
      table.integer('userId').alter().unsigned();
      table.foreign('userId').references('userId').inTable('tbl_users');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_event_vol', async function (table) {
      await table.dropForeign('userId');
      table.integer('userId').alter();
    })
};
