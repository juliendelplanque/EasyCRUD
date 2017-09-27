expression
equals: anObject
	^ ECRUDEquals new
			left: self;
			right: anObject;
			yourself