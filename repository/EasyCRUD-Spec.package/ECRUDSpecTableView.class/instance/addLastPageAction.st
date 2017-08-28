actions
addLastPageAction
	self easyCrud
		addTableAction: (ECRUDTableBlockAction new
								name: 'Last Page';
								block: [ :easyC | 
									offset := (easyC selectAllRows size // limit)*limit. self refreshList ])