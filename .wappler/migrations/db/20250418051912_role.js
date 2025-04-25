
exports.up = function(knex) {
  return knex.schema
    .renameTable('tbl_roles', 'tbl_roles_type')

};

exports.down = function(knex) {
  return knex.schema
    .renameTable('tbl_roles_type', 'tbl_roles')
};
