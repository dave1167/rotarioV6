
exports.up = function(knex) {
  return knex.schema
    .table('tbl_user_dets', async function (table) {
      table.string('add1');
      table.string('add2');
      table.string('town1');
      table.string('town2');
      table.string('county');
      table.string('postcode');
      table.string('mobile');
      table.string('tel');
      table.integer('userId');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_user_dets', async function (table) {
      table.dropColumn('add1');
      table.dropColumn('add2');
      table.dropColumn('town1');
      table.dropColumn('town2');
      table.dropColumn('county');
      table.dropColumn('postcode');
      table.dropColumn('mobile');
      table.dropColumn('tel');
      table.dropColumn('userId');
    })
};
