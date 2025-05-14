
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_location', async function (table) {
      table.increments('locationId');
      table.string('location');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_location')
};
