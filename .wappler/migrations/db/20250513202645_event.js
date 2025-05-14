
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_events', async function (table) {
      table.increments('eventId');
      table.string('eventName');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_events')
};
