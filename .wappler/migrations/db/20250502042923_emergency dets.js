
exports.up = function(knex) {
  return knex.schema
    .table('tbl_user_dets', async function (table) {
      table.undefined('dateModified');
      table.string('emrgyCntctNm');
      table.string('emrgyCntctNmbr');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_user_dets', async function (table) {
      table.dropColumn('dateModified');
      table.dropColumn('emrgyCntctNm');
      table.dropColumn('emrgyCntctNmbr');
    })
};
