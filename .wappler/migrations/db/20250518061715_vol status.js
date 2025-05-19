
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_event_vol_status', async function (table) {
      table.increments('volStatusid');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_event_vol_status')
};
