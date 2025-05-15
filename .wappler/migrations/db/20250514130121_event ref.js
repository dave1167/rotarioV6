
exports.up = function(knex) {
  return knex.schema
    .table('tbl_event_vol', async function (table) {
      table.integer('eventId').alter().unsigned();
      table.foreign('eventId').references('eventId').inTable('tbl_events');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_event_vol', async function (table) {
      await table.dropForeign('eventId');
      table.integer('eventId').alter();
    })
};
