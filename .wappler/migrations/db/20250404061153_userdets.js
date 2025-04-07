
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_user_dets', async function (table) {
      table.increments('usrDetsId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_user_dets')
};
