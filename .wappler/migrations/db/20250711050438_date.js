
exports.up = function(knex) {
  return knex.schema
    .table('test', async function (table) {
      table.string('date');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('test', async function (table) {
      table.dropColumn('date');
    })
};
