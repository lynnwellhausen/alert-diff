let email = table2.selectedRow.email;

console.log("table2 email:", email);

let result = table1.data.findIndex(row => row.email === email);

console.log("index result::", result);

table1.selectRow({
  mode: "index",
  index: result
})


//  return result;


