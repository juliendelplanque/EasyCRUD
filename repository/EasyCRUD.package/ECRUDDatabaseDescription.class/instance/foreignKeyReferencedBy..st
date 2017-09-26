accessing
foreignKeyReferencedBy: anECRUDFieldDescription
	^ (self foreignKeyRelations
			detect: [ :fkRelation | fkRelation from = anECRUDFieldDescription ]
			ifNone: [ ECRUDUnkownForeignKeyRelation signal: ('No foreign key relation is defined for {1} field in table {2}.' format: { anECRUDFieldDescription name . anECRUDFieldDescription tableDescription name }) ]) to