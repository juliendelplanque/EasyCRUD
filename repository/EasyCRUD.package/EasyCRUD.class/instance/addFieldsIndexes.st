accessing
addFieldsIndexes
	"Returns the indexes of the 'edit fields' in the list of all fields."
	^ self addFields collect: [ :f | self tableDescription allFields indexOf: f ]