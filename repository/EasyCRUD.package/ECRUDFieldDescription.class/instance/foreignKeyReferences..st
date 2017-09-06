foreign key
foreignKeyReferences: anECRUDFieldDescription
	ECRUDForeignKeyRelationDescription new
		beForDatabaseDescription: self databaseDescription;
		foreignKey: self;
		references: anECRUDFieldDescription