stream writing
writeIdentifiers: anArrayOfString on: aStream
	anArrayOfString
		do: [ :identifier | self writeIdentifier: identifier on: aStream ]
		separatedBy: [ aStream << ',' ]