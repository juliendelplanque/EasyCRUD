actions
addEditAction
	self easyCrud 
		addRowAction: (ECRUDRowBlockAction new
							name: 'Edit';
							block: [ :row :easyC | 
								self openEditSpecFor: row fields: easyC editFields and: easyC actionOnOk: [ :ui |
									|data|
									data := easyC editFields collect: [ :field |
										field name -> (field type convertString: (('ecrudinst_' , field name asLowercase) asSymbol value: ui) text) ].
									easyC updateRow: data asDictionary withId: row first.
									self refreshList ] named: 'Edit row' ];
							yourself)