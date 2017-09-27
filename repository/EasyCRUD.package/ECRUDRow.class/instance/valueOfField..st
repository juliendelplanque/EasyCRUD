accessing
valueOfField: aString
	^ self at: (self resultSet indexOfFieldNamed: aString)