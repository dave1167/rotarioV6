
exports.up = function(knex) {
  return knex.schema
    .renameTable('tbl_user_role', 'tbl_user_role_old')

};

exports.down = function(knex) {
  return knex.schema
    .renameTable('tbl_user_role_old', 'tbl_user_role')
};
