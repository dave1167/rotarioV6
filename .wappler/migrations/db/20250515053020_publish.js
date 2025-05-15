
exports.up = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.date('publishDate');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.dropColumn('publishDate');
    })
};
