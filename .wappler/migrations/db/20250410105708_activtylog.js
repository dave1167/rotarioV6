
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_activity_log', async function (table) {
      table.increments('activiyLogId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_activity_log')
};
