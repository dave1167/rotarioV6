
exports.up = function(knex) {
  return knex.schema
    .table('tbl_settings', async function (table) {
      table.string('emailSenderName');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_settings', async function (table) {
      table.dropColumn('emailSenderName');
    })
};
