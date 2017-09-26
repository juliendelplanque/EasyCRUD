*EasyCRUD
beSerializedBy: anECRUDDatabaseAdapter
	"Should call the right method of #anECRUDDatabaseAdapter to serialize myself as a String for the DBMS."
	^ self subclassResponsibility