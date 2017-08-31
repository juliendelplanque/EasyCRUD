accessing
displayFields
	^ self displayFieldsOriginalNames collect: [ :s | self tableDescription fieldNamed: s ]