query generation
generateWhereClauseFrom: fkRelations
	| whereClause |
	whereClause := ECRUDAnd new
						left: (ECRUDEquals left: (self fieldNamed: fkRelations first first) fullName asECRUDIdentifier right: (self databaseDescription tableNamed: fkRelations first third) pkField fullName asECRUDIdentifier);
						yourself.
	
	fkRelations allButFirst ifNotEmpty: [
		(fkRelations allButFirst allButLast
			inject: whereClause
			into: [ :expr :fkRelation |
				|right|
				right := ECRUDAnd new
							left: (ECRUDEquals left: (self fieldNamed: fkRelation first) fullName asECRUDIdentifier right: (self databaseDescription tableNamed: fkRelation third) pkField fullName asECRUDIdentifier);
							yourself.
				expr right: right.
				right ]) right: (ECRUDEquals left: (self fieldNamed: fkRelations last first) fullName asECRUDIdentifier right: (self databaseDescription tableNamed: fkRelations last third) pkField fullName asECRUDIdentifier) ] ifEmpty: [ whereClause := whereClause left ].
	^ whereClause