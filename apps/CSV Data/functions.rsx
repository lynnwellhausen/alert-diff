<GlobalFunctions>
  <SqlQueryUnified
    id="OfficialTable"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/OfficialTable.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="7af95af0-f3be-4f77-9e66-226896cacd35"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="TempTable"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    notificationDuration={4.5}
    query={include("./lib/TempTable.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="7af95af0-f3be-4f77-9e66-226896cacd35"
    showSuccessToaster={false}
    transformer="function removeDuplicateEmails(data, officialTableData) {
  const existingEmails = new Set(officialTableData.email);
  const filteredData = {
    email: [],
    first_name: [],
    last_name: [],
    id: [],
  };

  for (let i = 0; i < data.email.length; i++) {
    const email = data.email[i];
    if (!existingEmails.has(email)) {
      filteredData.email.push(email);
      filteredData.first_name.push(data.first_name[i]);
      filteredData.last_name.push(data.last_name[i]);
      filteredData.id.push(data.id[i]);
      existingEmails.add(email);
    }
  }

  return filteredData;
}

// Usage example:
let filteredData = removeDuplicateEmails(data, {{ OfficialTable.data }} );
// Query results are available as the `data` variable
return filteredData;"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="insertScript"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/insertScript.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="insertTrigger"
    actionType="INSERT"
    changeset={'[{"key":"","value":""},{"key":"first_name","value":""}]'}
    changesetIsObject={true}
    changesetObject="{{ insertScript.userData}}"
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="7af95af0-f3be-4f77-9e66-226896cacd35"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="OfficialTable"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query5"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    query={include("./lib/query5.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="7af95af0-f3be-4f77-9e66-226896cacd35"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query6"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    notificationDuration={4.5}
    query={include("./lib/query6.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="7af95af0-f3be-4f77-9e66-226896cacd35"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    transformer="// Query results are available as the `data` variable
return data"
    updateSetValueDynamically={true}
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="getSame"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/getSame.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="selectedRowValue"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/selectedRowValue.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="query9"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    notificationDuration={4.5}
    query={include("./lib/query9.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="downloadPage"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    notificationDuration={4.5}
    query={include("./lib/downloadPage.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="query11"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    notificationDuration={4.5}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="query12"
    isHidden={false}
    notificationDuration={4.5}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="OfficialTable2"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/OfficialTable2.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="7af95af0-f3be-4f77-9e66-226896cacd35"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RESTQuery
    id="query14"
    isHidden={false}
    notificationDuration={4.5}
    resourceDisplayName="abc"
    resourceName="d1c1adc1-2c3a-45dd-bb66-8ea57d62e73a"
    showSuccessToaster={false}
  />
  <RetoolAIQuery
    id="chat1_query1"
    action="chatResponseGeneration"
    chatHistory="{{ chat1.messageHistory }}"
    chatInput="{{ chat1.lastMessage }}"
    isHidden={false}
    metadata={null}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
  />
  <OpenAPIQuery
    id="query16"
    isHidden={false}
    method="get"
    operationId={null}
    parameterDynamicStates={
      '{"email":false,"first_name":false,"last_name":false}'
    }
    parameterMetadata=""
    parameters={'{"email":"lynn@retool.com"}'}
    path="/users"
    requestBodyMetadata=""
    resourceDisplayName="Retool API - Open API"
    resourceName="07aaa545-26af-47ac-aeeb-bfa696e0ed92"
    runWhenModelUpdates={true}
    serverVariables="{}"
  />
  <JavascriptQuery
    id="query17"
    isHidden={false}
    notificationDuration={4.5}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="query18"
    _additionalScope={["foo"]}
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/query18.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  >
    <Event
      event="success"
      method="trigger"
      params={{
        ordered: [
          {
            options: {
              ordered: [{ additionalScope: { ordered: [{ foo: '"123"' }] } }],
            },
          },
        ],
      }}
      pluginId="query20"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <SMTPQuery
    id="query19"
    isHidden={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_email"
    resourceName="retool_email"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="query20"
    _additionalScope={["foo"]}
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/query20.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  >
    <Event
      event="success"
      method="trigger"
      params={{
        ordered: [
          {
            options: {
              ordered: [{ additionalScope: { ordered: [{ foo: '"123"' }] } }],
            },
          },
        ],
      }}
      pluginId="query18"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
</GlobalFunctions>
