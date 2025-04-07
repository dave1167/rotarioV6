
exports.up = function(knex) {
  return knex.schema
    .dropTable('images')

};

exports.down = function(knex) {
  return knex.schema
    .createTable('images', async function (table) {
      table.increments('id').primary().notNullable();
      table.string('image', 50);
      table.text('description', 65535);
      table.string('category', 12);
      table.string('author', 50);
      table.date('date');
    })
};
