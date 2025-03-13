function addNewRecords(tempData) {
  let nextId = 100; // Keep track of the next ID

  for (let i = 0; i < tempData.email.length; i++) {
    
    insertTrigger.trigger({
      additionalScope: {
        userdata: {
          email: tempData.email[i],
          first_name: tempData.first_name[i],
          last_name: tempData.last_name[i],
          id: nextId++,
        },
      },

      onSuccess: function () {
        console.log("Successfully ran!");
      },

      onFailure: function (error) {
        console.log(error);
      },
    });
  }
}

addNewRecords(TempTable.data);

