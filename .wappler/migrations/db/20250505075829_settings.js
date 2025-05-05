
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_settings', async function (table) {
      table.increments('settingsId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_settings')
};
