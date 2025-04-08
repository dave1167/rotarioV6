
exports.up = function(knex) {
  return knex.schema
    .table('tbl_tenant_stbl_ten_dets', async function (table) {
      table.string('tenAdd1');
      table.string('tenAdd2');
      table.string('tenTown');
      table.string('tenTown2');
      table.string('tenCounty');
      table.string('tenPostcode');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_tenant_stbl_ten_dets', async function (table) {
      table.dropColumn('tenAdd1');
      table.dropColumn('tenAdd2');
      table.dropColumn('tenTown');
      table.dropColumn('tenTown2');
      table.dropColumn('tenCounty');
      table.dropColumn('tenPostcode');
    })
};
