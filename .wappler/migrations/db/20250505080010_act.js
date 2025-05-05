
exports.up = function(knex) {
  return knex.schema
    .renameTable('tblActivities', 'tbl_activities')

};

exports.down = function(knex) {
  return knex.schema
    .renameTable('tbl_activities', 'tblActivities')
};
