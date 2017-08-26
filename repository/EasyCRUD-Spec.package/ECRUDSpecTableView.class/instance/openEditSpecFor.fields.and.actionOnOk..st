private
openEditSpecFor: row fields: fields and: easyC actionOnOk: block
	|ui layout|
	ui := DynamicComposableModel new.
	ui title: 'Edit row'.
	ui instantiateModels: (fields collect: [ :field | { 
									('ecrudinst_' , field name asLowercase , '_label') asSymbol . #LabelModel .
									('ecrudinst_' , field name asLowercase) asSymbol . #TextInputFieldModel } ]) flattened , 
							#(ecrudinst_cancel ButtonModel ecrudinst_ok ButtonModel).
	fields do: [ :field |
		(('ecrudinst_' , field name asLowercase , '_label') asSymbol value: ui)
			label: (self easyCrud displayNameOfFieldNamed: field name).
		(('ecrudinst_' , field name asLowercase) asSymbol value: ui)
			text: (row at: (easyC tableDescription allFieldsNames indexOf: field name)) asString;
			autoAccept: true ].
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