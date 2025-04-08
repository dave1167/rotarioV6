
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_ten_details', async function (table) {
      table.increments('tenDetsId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_ten_details')
};
