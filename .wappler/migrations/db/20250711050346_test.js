
exports.up = function(knex) {
  return knex.schema
    .table('test', async function (table) {
      table.undefined('id');
      table.undefined('test');
      table.string('date');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('test', async function (table) {
      table.dropColumn('id');
      table.dropColumn('test');
      table.dropColumn('date');
    })
};
