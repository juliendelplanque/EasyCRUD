as yet unclassified
printOn: aStream
	super printOn: aStream.
	aStream
		<< $(;
		<< self from fullName;
		<< ' -> ';
		<< self to fullName.
	aStream << $)