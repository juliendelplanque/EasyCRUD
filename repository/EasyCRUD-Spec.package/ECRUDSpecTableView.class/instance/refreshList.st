refreshing
refreshList
	self easyCrud isNotNil
		ifFalse: [ ^ self ].
		
	self list
		items: { self easyCrud tableDescription allFieldsNames collect: [ :fieldName | self easyCrud displayNameOfFieldNamed: fieldName ] } ,
				((self easyCrud tableDescription generateSelectLimit: limit offset: offset) beExecutedBy: self easyCrud databaseAdapter)