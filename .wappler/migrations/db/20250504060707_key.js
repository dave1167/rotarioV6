
exports.up = function(knex) {
  return knex.schema
    .table('tbl_ek', async function (table) {
      table.string('key', 255).alter();
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_ek', async function (table) {
      table.text('key', 65535).alter();
    })
};
