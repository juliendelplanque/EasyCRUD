accessing
editFieldsIndexes
	"Returns the indexes of the 'edit fields' in the list of all fields."
	^ self editFields collect: [ :f | self tableDescription allFields indexOf: f ]