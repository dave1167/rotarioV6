
exports.up = function(knex) {
  return knex.schema
    .createTable('tbl_tenant_stbl_ten_dets', async function (table) {
      table.increments('tenDetsId');
      table.uuid('tbl_tenant_id');
      table.foreign('tbl_tenant_id').references('tenId').inTable('tbl_tenants').onUpdate('CASCADE').onDelete('CASCADE');
    })

};

exports.down = function(knex) {
  return knex.schema
    .dropTable('tbl_tenant_stbl_ten_dets')
};
