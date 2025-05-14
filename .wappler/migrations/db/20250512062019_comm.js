
exports.up = function(knex) {
  return knex.schema
    .table('tbl_settings', async function (table) {
      table.string('emailSenderName', 255).comment('this will appear on bottom of emails').alter();
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_settings', async function (table) {
      table.string('emailSenderName', 255).comment('').alter();
    })
};
