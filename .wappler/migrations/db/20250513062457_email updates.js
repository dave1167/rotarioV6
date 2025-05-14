
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_emailStatus', async function (table) {
      table.increments('statusId');
      table.string('statusDesc');
    })
    .table('tbl_email', async function (table) {
      table.string('subject');
      table.text('message');
      table.integer('sendStatus');
      table.datetime('dateSent');
      table.datetime('dateCreated');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_email', async function (table) {
      table.dropColumn('subject');
      table.dropColumn('message');
      table.dropColumn('sendStatus');
      table.dropColumn('dateSent');
      table.dropColumn('dateCreated');
    })
    .dropTable('tbl_emailStatus')
};
