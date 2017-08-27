actions
addNextPageAction
	self easyCrud
		addTableAction: (ECRUDTableBlockAction new
								name: 'Next Page';
								block: [ :easyC | 
									((offset + limit) >= easyC selectAllRows size)
										ifFalse: [ offset := offset + limit. self refreshList ] ])