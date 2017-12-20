private
openEditSpecFor: row fields: fields and: easyC actionOnOk: block named: aString
	|ui layout|
	ui := DynamicComposableModel new
				title: aString;
				instantiateModels: (self generateModelsInstantiationArrayFrom: fields);
				yourself.
	
	fields do: [ :field |
		(('ecrudinst_' , field name asLowercase , '_label') asSymbol value: ui)
			label: (self easyCrud aliasOfFieldNamed: field name).
		(self easyCrud columnHas1NRelation: field name)
			ifTrue: [ 
				|values|
				values := self easyCrud all1NRelationValuesForColumnNamed: field name.
				(('ecrudinst_' , field name asLowercase) asSymbol value: ui)
					displayBlock: [ :r | r second ];
					items: values;
					setSelectedIndex: ((values collect: #second) indexOf: (row at: ((fields collect: #name) indexOf: field name))) ]
			ifFalse: [ 
				(('ecrudinst_' , field name asLowercase) asSymbol value: ui)
					text: (row at: ((fields collect: #name) indexOf: field name)) asString;
					autoAccept: true ] ].
	
	ui ecrudinst_cancel
		label: 'Cancel';
		action: [ ui hide; delete ].
	ui ecrudinst_ok
		label: 'Ok';
		action: [ block value: ui ].
	layout := SpecLayout composed
				newColumn: [ :c |
					fields do: [ :field | 
							c newRow: [ :r |
								r
									add: ('ecrudinst_' , field name asLowercase , '_label') asSymbol;
									add: ('ecrudinst_' , field name asLowercase) asSymbol ] height: ComposableModel inputTextHeight ].
					c newRow: [ :r |
						r
							newColumn: #ecrudinst_cancel ;
							add: #ecrudinst_ok ] height: ComposableModel buttonHeight ];
			yourself.	
			
	ui openWithSpecLayout: layout