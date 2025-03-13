<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css="" />
  <CustomAppTheme
    id="$appTheme"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ size: "12px", fontWeight: "400" }}
    h1Font={{ size: "36px", fontWeight: "700" }}
    h2Font={{ size: "28px", fontWeight: "700" }}
    h3Font={{ size: "24px", fontWeight: "700" }}
    h4Font={{ size: "18px", fontWeight: "700" }}
    h5Font={{ size: "16px", fontWeight: "700" }}
    h6Font={{ size: "14px", fontWeight: "700" }}
    highlight="#fde68a"
    info="#3170f9"
    labelEmphasizedFont={{ size: "12px", fontWeight: "600" }}
    labelFont={{ size: "12px", fontWeight: "500" }}
    primary="#3170f9"
    secondary="rgba(221, 19, 195, 0.29)"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <UrlFragments id="$urlFragments" value={{ ordered: [{ "": "" }] }} />
  <Include src="./header.rsx" />
  <Include src="./src/modalFrame1.rsx" />
  <Include src="./src/modalFrame2.rsx" />
  <Frame
    id="$main"
    _disclosedFields={{ array: [] }}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Text
      id="title"
      _disclosedFields={["color"]}
      marginType="normal"
      style={{ ordered: [{ color: "rgb(23, 61, 36)" }] }}
      value="### User Management"
    />
    <Filter
      id="filter1"
      linkedTableId="table1"
      linkToTable={true}
      style={{ ordered: [{ background: "secondary" }] }}
    />
    <Alert id="alert1" />
    <NumberInput
      id="numberInput1"
      currency="USD"
      inputValue={0}
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value={0}
    />
    <Table
      id="table1"
      actionsOverflowPosition={2}
      cellSelection="none"
      changesetArray={[]}
      clearChangesetOnSave={true}
      cursorCache={{}}
      data="{{ query6.data }}"
      defaultFilters={{
        0: {
          ordered: [
            { columnId: "" },
            { operator: "includes" },
            { value: "" },
            { id: "d822f" },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[]}
      dynamicColumnFormatOptions={{ icon: { ordered: [] } }}
      dynamicColumnProperties={{
        formatByIndex: "icon",
        labelByIndex: "{{ item }}",
      }}
      heightType="auto"
      linkedFilterId="filter1"
      persistRowSelection={true}
      primaryKeyColumnId="dee66"
      rowBackgroundColor="{{table1.selectedRow }}"
      rowHeight="small"
      rowSelection="multiple"
      selectedDataIndexes={[]}
      selectedRowKeys={[]}
      selectedRows={[]}
      selectedSourceRows={[]}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      sortArray={[]}
      style={{
        border: "rgb(204, 204, 204)",
        borderRadius: "8px",
        accent: "rgb(70, 166, 124)",
        background: "{{se;f}}",
      }}
      templatePageSize={20}
    >
      <Column
        id="dee66"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="none"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={0}
      />
      <Column
        id="688df"
        alignment="left"
        editable="false"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="first_name"
        label="First name"
        optionList={{
          manualData: [
            { ordered: [{ value: "Cindee" }] },
            { ordered: [{ value: "Diahann" }] },
            { ordered: [{ value: "Kip" }] },
            { ordered: [{ value: "Jessalyn" }] },
            { ordered: [{ value: "Gustavo" }] },
            { ordered: [{ value: "Caprice" }] },
            { ordered: [{ value: "Hilde" }] },
            { ordered: [{ value: "Olivette" }] },
            { ordered: [{ value: "Alisa" }] },
            { ordered: [{ value: "Rachelle" }] },
            { ordered: [{ value: "Gisele" }] },
            { ordered: [{ value: "Deeyn" }] },
            { ordered: [{ value: "Geoffrey" }] },
            { ordered: [{ value: "Cairistiona" }] },
            { ordered: [{ value: "Jacki" }] },
            { ordered: [{ value: "Clair" }] },
            { ordered: [{ value: "Sofie" }] },
            { ordered: [{ value: "Anatol" }] },
            { ordered: [{ value: "Melonie" }] },
            { ordered: [{ value: "Derrick" }] },
          ],
        }}
        placeholder="Enter value"
        position="center"
        size={0}
        sortMode="disabled"
        summaryAggregationMode="none"
      />
      <Column
        id="8a710"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        groupAggregationMode="none"
        key="last_name"
        label="Last name"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="8fc55"
        alignment="left"
        editable="false"
        format="string"
        formatOptions={{ icon: "" }}
        groupAggregationMode="none"
        key="email"
        label="Email"
        placeholder="Enter value"
        position="center"
        size={0}
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Action
        id="5c2b5"
        icon="bold/interface-arrows-right-alternate"
        label="Action 1"
      />
      <Action id="35808" icon="bold/interface-edit-pencil" label="Action 2" />
      <Event
        event="selectRow"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="OfficialTable2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="selectRow"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="OfficialTable2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Button id="button1" text="Button" />
    <Date
      id="date1"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      labelPosition="top"
      value="{{ new Date() }}"
    />
    <FileInput
      id="fileInput1"
      _isUpgraded={true}
      iconBefore="bold/programming-browser-search"
      labelPosition="top"
      textBefore="Browse"
    >
      <Event
        event="parse"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query17"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </FileInput>
    <Link id="link1" text="Link">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query14"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Link id="link2" text="Link" />
    <Chat
      id="chat1"
      _actionDisabled={{ ordered: [{ "1a": "" }] }}
      _actionHidden={{ ordered: [{ "1a": "" }] }}
      _actionIcon={{ ordered: [{ "1a": "line/interface-align-front" }] }}
      _actionIds={["1a"]}
      _actionLabel={{ ordered: [{ "1a": "Copy" }] }}
      _actionType={{ ordered: [{ "1a": "copy" }] }}
      _defaultUsername="{{ current_user.fullName }}"
      _headerButtonHidden={{ ordered: [{ "2b": "" }, { "3c": "" }] }}
      _headerButtonIcon={{
        ordered: [
          { "2b": "line/interface-download-button-2" },
          { "3c": "line/interface-delete-bin-2" },
        ],
      }}
      _headerButtonIds={["2b", "3c"]}
      _headerButtonLabel={{
        ordered: [{ "2b": "Download" }, { "3c": "Clear history" }],
      }}
      _headerButtonType={{
        ordered: [{ "2b": "download" }, { "3c": "clearHistory" }],
      }}
      _sessionStorageId="af5cafe6-8247-4a27-a5af-cad66216b314"
      assistantName="Retool AI"
      avatarFallback="{{ current_user.fullName }}"
      avatarImageSize={32}
      avatarSrc="{{ current_user.profilePhotoUrl }}"
      emptyDescription="Send a message to chat with AI"
      emptyTitle="No messages here yet"
      placeholder="Type a message"
      queryTargetId="chat1_query1"
      showAvatar={true}
      showEmptyState={true}
      showHeader={true}
      showTimestamp={true}
      style={{ ordered: [{ background: "automatic" }] }}
      title="Chat"
    >
      <Event
        event="clickAction"
        method="copyToClipboard"
        params={{ ordered: [{ value: "{{ currentMessage.value }}" }] }}
        pluginId="chat1"
        targetId="1a"
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickHeader"
        method="exportData"
        pluginId="chat1"
        targetId="2b"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickHeader"
        method="clearHistory"
        pluginId="chat1"
        targetId="3c"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Chat>
    <ListViewBeta
      id="listView1"
      data={
        '["Fluffy", "Whiskers", "Fido", "Mittens", "Rex", "Snowball", "Spot", "Lucky", "Princess", "Buddy", "Milo", "Cleo", "Lola", "Simba", "Rocky", "Ginger", "Spike", "Max", "Cupcake", "Oreo"]'
      }
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="container1"
        _gap={0}
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        padding="12px"
        showBody={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="containerTitle1"
            value="#### {{ item }}"
            verticalAlign="center"
          />
        </Header>
        <View id="87340" viewKey="View 1" />
      </Container>
    </ListViewBeta>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text id="formTitle1" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <CheckboxGroup
          id="checkboxGroup1"
          itemMode="static"
          labelPosition="top"
          required={true}
          value="{{ [self.values[0]] }}"
        >
          <Option id="1fabc" value="Option 1" />
          <Option id="346dd" value="Option 2" />
          <Option id="471e4" value="Option 3" />
        </CheckboxGroup>
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
    </Form>
    <Checkbox id="checkbox1" labelWidth="100" />
    <Button
      id="button2"
      style={{ ordered: [{ borderRadius: "15px " }] }}
      text="Button"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query18"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <FileButton
      id="fileButton1"
      _isUpgraded={true}
      iconBefore="bold/programming-browser-search"
      maxCount={20}
      maxSize="250mb"
      styleVariant="outline"
      text="Browse"
    >
      <Event
        event="parse"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query16"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </FileButton>
    <FileInput
      id="fileInput2"
      _isUpgraded={true}
      accept={'[".csv"]'}
      iconBefore="bold/programming-browser-search"
      labelPosition="top"
      maxCount={20}
      maxSize="250mb"
      placeholder="No file selected"
      showClear={true}
      textBefore="Browse"
    >
      <Event
        event="parse"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query16"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query16"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </FileInput>
    <HTML
      id="html2"
      css={include("./lib/html2.css", "string")}
      html={include("./lib/html2.html", "string")}
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query9"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </HTML>
  </Frame>
</App>
