query generation
generateUpdateRow: dataDict withId: id
	^ ECRUDUpdateQuery new
			tableIdentifier: self name;
			dataDict: dataDict;
			whereClause: { { self pkField name . '=' . id } }
			yourself