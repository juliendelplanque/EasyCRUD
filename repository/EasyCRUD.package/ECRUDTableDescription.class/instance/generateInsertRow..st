query generation
generateInsertRow: dataDict
	| processedDataDict |
	processedDataDict := Dictionary new.
	dataDict keysAndValuesDo: [ :fieldName :value |
		processedDataDict at: (self fieldNamed: fieldName) name put: value ].
	^ ECRUDInsertQuery new
			tableIdentifier: self name;
			dataDict: processedDataDict;
			yourself