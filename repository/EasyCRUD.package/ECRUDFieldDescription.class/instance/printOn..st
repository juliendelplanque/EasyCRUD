printing
printOn: aStream
	super printOn: aStream.
	aStream << $(.
	self printFullNameOn: aStream.
	aStream << $,.
	self type printOn: aStream.
	aStream << $)