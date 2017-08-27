actions
addDeleteAction
	self easyCrud 
		addRowAction: (ECRUDRowBlockAction new
							name: 'Delete';
							block: [ :row :easyC | 
								easyC deleteRowWithId: row first ];
							yourself)