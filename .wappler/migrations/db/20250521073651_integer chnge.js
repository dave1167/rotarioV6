
exports.up = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.integer('published').alter();
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.boolean('published').alter();
    })
};
