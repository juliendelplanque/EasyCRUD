accessing - fields
requiredFields
	"Required fields for Create and Edit actions."
	^ requiredFieldsNames collect: [ :s | self tableDescription fieldNamed: s ]