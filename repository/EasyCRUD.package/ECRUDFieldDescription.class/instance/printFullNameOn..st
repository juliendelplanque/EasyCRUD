printing
printFullNameOn: aStream
	aStream
		<< self tableDescription name;
		<< $.;
		<< self name