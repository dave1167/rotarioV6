
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_venue', async function (table) {
      table.increments('venueId');
      table.integer('tenantId');
      table.string('venueDesc');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_venue')
};
