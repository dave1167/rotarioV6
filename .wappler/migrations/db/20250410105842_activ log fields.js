
exports.up = function(knex) {
  return knex.schema
    .table('tbl_activity_log', async function (table) {
      table.integer('userId');
      table.string('action');
      table.datetime('dateTime');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_activity_log', async function (table) {
      table.dropColumn('userId');
      table.dropColumn('action');
      table.dropColumn('dateTime');
    })
};
