adding
addField: fieldName withType: type
	fields add: (ECRUDFieldDescription new
						beForDatabaseDescription: self databaseDescription;
						tableDescription: self;
						name: fieldName;
						type: type;
						yourself)