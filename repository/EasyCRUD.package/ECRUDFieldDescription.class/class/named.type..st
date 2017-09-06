instance creation
named: aString type: aType
	self flag: #deprecated.
	^ self new
		name: aString;
		type: aType;
		yourself