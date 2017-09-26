queries generation
serializeDate: aDate
	^ String streamContents: [ :aStream |
		aStream
			<< $';
			<< aDate yyyymmdd;
			<< $' ]