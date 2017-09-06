accessing
pkField: anECRUDFieldDescription
	pkField := anECRUDFieldDescription.
	anECRUDFieldDescription
		beForDatabaseDescription: self databaseDescription;
		tableDescription: self