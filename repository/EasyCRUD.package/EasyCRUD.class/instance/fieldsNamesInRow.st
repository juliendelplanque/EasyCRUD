accessing - fields
fieldsNamesInRow
	^ self displayFieldsNames collect: [ :fieldName |
		(self columnHas1NRelation: fieldName). self halt: 'TODO' ]