
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_user_role', async function (table) {
      table.increments('id');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_user_role')
};
