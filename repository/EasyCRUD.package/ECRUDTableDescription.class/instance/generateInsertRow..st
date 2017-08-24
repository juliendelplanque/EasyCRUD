query generation
generateInsertRow: dataDict
	^ ECRUDInsertQuery new
			tableIdentifier: self name;
			dataDict: dataDict;
			yourself