queries execution
executeQuery: anECRUDQuery
	"Execute the query object by the DBMS."
	^ self executeQueryString: (anECRUDQuery beSerializedBy: self)