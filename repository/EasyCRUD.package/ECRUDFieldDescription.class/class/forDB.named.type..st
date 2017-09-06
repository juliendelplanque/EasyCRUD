instance creation
forDB: anECRUDDatabaseDescription named: aString type: aType
	^ self new
		beForDatabaseDescription: anECRUDDatabaseDescription;
		name: aString;
		type: aType;
		yourself