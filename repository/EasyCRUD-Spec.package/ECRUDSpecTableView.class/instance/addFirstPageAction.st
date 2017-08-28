actions
addFirstPageAction
	self easyCrud
		addTableAction: (ECRUDTableBlockAction new
								name: 'First Page';
								block: [ :easyC | 
									offset := 0. self refreshList ])