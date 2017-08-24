stream writing
writeString: aString on: aStream
	aStream
		<< '"';
		<< aString;
		<< '"'