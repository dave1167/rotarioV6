
exports.up = function(knex) {
  return knex.schema
    .createTable('test', async function (table) {
      table.increments('id');
      table.string('test');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('test')
};
