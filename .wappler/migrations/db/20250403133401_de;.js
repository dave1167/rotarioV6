
exports.up = function(knex) {
  return knex.schema
    .dropTable('users')

};

exports.down = function(knex) {
  return knex.schema
    .createTable('users', async function (table) {
      table.increments('id').primary().notNullable();
      table.string('first_name', 50);
      table.string('last_name', 50);
      table.string('gender', 50);
      table.string('email', 50);
      table.string('company', 50);
      table.string('avatar', 100);
    })
};
