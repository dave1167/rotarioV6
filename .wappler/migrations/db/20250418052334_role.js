
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_user_role', async function (table) {
      table.increments('roleId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_user_role')
};
