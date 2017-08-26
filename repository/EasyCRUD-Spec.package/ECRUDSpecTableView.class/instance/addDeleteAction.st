actions
addDeleteAction
	self easyCrud 
		addRowAction: (ECRUDRowBlockAction new
							name: 'Delete';
							block: [ :row :easyC | 
								(easyC tableDescription generateDeleteRowWithId: row first)
									beExecutedBy: easyC databaseAdapter ];
							yourself)