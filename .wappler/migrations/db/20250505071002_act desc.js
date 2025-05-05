
exports.up = function(knex) {
  return knex.schema
    .createTable('tblActivities', async function (table) {
      table.increments('activityId');
      table.string('activityDesc');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tblActivities')
};
