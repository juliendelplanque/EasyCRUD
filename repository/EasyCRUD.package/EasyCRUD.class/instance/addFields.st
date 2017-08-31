accessing - fields
addFields
	"Returns the list of fields to expose for Create operation."
	^ addFieldsNames collect: [ :s | self tableDescription fieldNamed: s ]