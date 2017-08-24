instance creation
sqliteDBPath: aString
	| driver |
	driver := GASqlite3Driver fromConnectionString: (GAConnectionString fromString: ('sqlite3://{1}' format: {aString})).
	^ self new
		dbAdapter: (ECRUDSqlite3Adapter new
						driver: driver;
						yourself);
		yourself