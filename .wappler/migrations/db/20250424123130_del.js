
exports.up = function(knex) {
  return knex.schema
    .dropTable('tbl_user_role_old')

};

exports.down = function(knex) {
  return knex.schema
    .createTable('tbl_user_role_old', async function (table) {
      table.increments('userId').primary().notNullable();
      table.integer('role');
    })
};
