initialization
initialize
	super initialize.
	self
		orderByAsc;
		distinct: false.
	renameDict := Dictionary new