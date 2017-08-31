printing
printOn: aStream
	super printOn: aStream.
	aStream << $(.
	self name printOn: aStream.
	aStream << $,.
	self type printOn: aStream.
	aStream << $)