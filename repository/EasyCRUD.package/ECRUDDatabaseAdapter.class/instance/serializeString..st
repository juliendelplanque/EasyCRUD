queries generation
serializeString: aString
	^ String streamContents: [ :stream |
		stream
			<< $";
			<< aString;
			<< $" ]