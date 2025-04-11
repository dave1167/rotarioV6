
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_ek', async function (table) {
      table.increments('ekId');
      table.string('key');
      table.integer('userId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_ek')
};
