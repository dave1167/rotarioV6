exports.seed = async function(knex) {
  // Inserts seed entries
  await knex.transaction(async trx => {

    // Process tbl_ek
    await trx('tbl_ek').del();
    await trx('tbl_ek').insert({ekId:4,key:"4E3WERTYUssaq",userId:1}).onConflict('ekId').ignore();
    await trx('tbl_ek').insert({ekId:40,key:"e2db6040a04ff7da0b9e8be37832771c5f1d272c",userId:55}).onConflict('ekId').ignore();
    await trx('tbl_ek').insert({ekId:41,key:"32d717cdd121f58afe246261048d8ec0beb380e9",userId:56}).onConflict('ekId').ignore();

})

};