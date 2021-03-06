query generation
generateUpdateRow: dataDict withId: id
	| processedDataDict |
	processedDataDict := Dictionary new.
	dataDict keysAndValuesDo: [ :fieldName :value |
		processedDataDict at: (self fieldNamed: fieldName) name put: value ].
	^ ECRUDUpdateQuery new
			tableIdentifier: self name;
			dataDict: processedDataDict;
			whereClause: (ECRUDEquals left: self pkField fullName asECRUDIdentifier right: id);
			yourself