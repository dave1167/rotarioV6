
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_event_vol', async function (table) {
      table.increments('evVolId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_event_vol')
};
