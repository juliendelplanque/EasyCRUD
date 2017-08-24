initialization
setUp
	easyCrud := EasyCRUDDescription new
						tableName: 'person';
						primaryKey: 'id';
						columns: #('first_name' 'last_name' 'age' 'address');
						yourself.

	adapter := ECRUDDatabaseAdapter new