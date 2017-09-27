expression
smallerOrEqual: anObject
	^ ECRUDSmallerOrEqual new
			left: self;
			right: anObject;
			yourself