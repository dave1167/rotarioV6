
exports.up = function(knex) {
  return knex.schema
    .table('tbl_event_vol', async function (table) {
      table.integer('eventId');
      table.integer('userId');
    })
    .table('tbl_settings', async function (table) {
      table.integer('daysToPublish');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_settings', async function (table) {
      table.dropColumn('daysToPublish');
    })
    .table('tbl_event_vol', async function (table) {
      table.dropColumn('eventId');
      table.dropColumn('userId');
    })
};
