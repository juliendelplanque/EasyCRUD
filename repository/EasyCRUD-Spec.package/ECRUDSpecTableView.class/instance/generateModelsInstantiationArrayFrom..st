private
generateModelsInstantiationArrayFrom: fields
	^ (fields collect: [ :field | 
		{ 
			('ecrudinst_' , field name asLowercase , '_label') asSymbol .
			#LabelModel .
			('ecrudinst_' , field name asLowercase) asSymbol . 
			(self easyCrud columnHas1NRelation: field name)
				ifTrue: [ #DropListModel ]
				ifFalse: [ #TextInputFieldModel ] } ]) flattened , 
	#(ecrudinst_cancel ButtonModel ecrudinst_ok ButtonModel)