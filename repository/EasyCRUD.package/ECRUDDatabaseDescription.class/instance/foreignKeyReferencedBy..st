accessing
foreignKeyReferencedBy: anECRUDFieldDescription
	^ (self foreignKeyRelations detect: [ :fkRelation |
		fkRelation from = anECRUDFieldDescription ]) to