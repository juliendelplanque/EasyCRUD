expression
greaterOrEqual: anObject
	^ ECRUDGreaterOrEqual new
			left: self;
			right: anObject;
			yourself