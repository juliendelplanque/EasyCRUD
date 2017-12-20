accessing
dataForFields: fieldNames
	^ fieldNames collect: [ :fieldName | self valueOfField: fieldName ]