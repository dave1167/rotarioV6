
exports.up = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.integer('numvols').alter();
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.string('numvols', 255).alter();
    })
};
