refreshing
refreshList
	self easyCrud isNotNil
		ifFalse: [ ^ self ].
	
	lastSelectResult := self easyCrud selectLimit: limit offset: offset.
	self list
		resetSelection;
		items: { 	self easyCrud displayFieldsAliases } ,
			(lastSelectResult collect: [ :row |
				row dataForFields: (self easyCrud displayFieldsNames ) ])