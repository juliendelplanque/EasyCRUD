accessing - fields
editFields
	"Returns the list of fields to expose for Update operation."
	^ editFieldsNames collect: [ :s | self tableDescription fieldNamed: s ]