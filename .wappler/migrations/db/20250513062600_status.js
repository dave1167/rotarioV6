
exports.up = function(knex) {
  return knex.schema
    .table('tbl_email', async function (table) {
      table.integer('sendStatus').alter().unsigned();
      table.foreign('sendStatus').references('statusId').inTable('tbl_emailStatus').onUpdate('CASCADE').onDelete('CASCADE');
    })

};

exports.down = function(knex) {
  return knex.schema
    .table('tbl_email', async function (table) {
      await table.dropForeign('sendStatus');
      table.integer('sendStatus').alter();
    })
};
