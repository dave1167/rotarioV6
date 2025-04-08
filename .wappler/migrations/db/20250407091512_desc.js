
exports.up = function(knex) {
  return knex.schema
    .table('testuuid', async function (table) {
      table.string('desc');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('testuuid', async function (table) {
      table.dropColumn('desc');
    })
};
