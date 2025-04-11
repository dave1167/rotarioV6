
exports.up = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.renameColumn('emailEnc', 'imageName');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_users', async function (table) {
      table.renameColumn('imageName', 'emailEnc');
    })
};
