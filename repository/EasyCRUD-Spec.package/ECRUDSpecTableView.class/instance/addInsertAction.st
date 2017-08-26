actions
addInsertAction
	self easyCrud 
		addTableAction: (ECRUDTableBlockAction new
							name: 'Insert';
							block: [ :easyC | 
								self openEditSpecFor: ((1 to: easyC addFields size) collect: [ :f | '' ]) fields: easyC addFields and: easyC actionOnOk: [ :ui |
									|data|
									data := easyC addFields collect: [ :field |
										field name -> (field type convertString: (('ecrudinst_' , field name asLowercase) asSymbol value: ui) text) ].
									(easyC tableDescription generateInsertRow: data asDictionary)
										beExecutedBy: easyC databaseAdapter.
									self refreshList ] ];
							yourself)