accessing - fields
displayFields
	"Returns the list of fields to expose for Read operation."
	^ displayFieldsNames collect: [ :s | self tableDescription fieldNamed: s ]