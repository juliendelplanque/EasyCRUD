query generation
generateInsertRow: dataDict
	| processedDataDict |
	processedDataDict := Dictionary new.
	dataDict keysAndValuesDo: [ :fieldName :value |
		processedDataDict at: (self fieldNamed: fieldName) fullName put: value ].
	^ ECRUDInsertQuery new
			tableIdentifier: self name;
			dataDict: processedDataDict;
			yourself