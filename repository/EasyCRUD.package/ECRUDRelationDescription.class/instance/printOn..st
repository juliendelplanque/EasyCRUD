printing
printOn: aStream
	super printOn: aStream.
	aStream
		<< $(;
		<< self from fullName;
		<< ' -> ';
		<< self to fullName.
	aStream << $)