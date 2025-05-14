
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_email', async function (table) {
      table.increments('emailId');
      table.string('recipient');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_email')
};
