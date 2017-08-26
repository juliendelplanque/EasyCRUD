actions
addPreviousPageAction
	self easyCrud
		addTableAction: (ECRUDTableBlockAction new
								name: 'Previous Page';
								block: [ :easyC | 
									offset = 0 ifFalse: [ 
										offset := offset - limit. self refreshList ] ])