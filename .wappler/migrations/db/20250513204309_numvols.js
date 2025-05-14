
exports.up = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.string('numvols');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_events', async function (table) {
      table.dropColumn('numvols');
    })
};
