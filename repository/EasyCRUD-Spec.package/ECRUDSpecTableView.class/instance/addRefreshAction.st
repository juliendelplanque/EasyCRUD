actions
addRefreshAction
	self easyCrud
		addTableAction: (ECRUDTableBlockAction new
								name: 'Refresh';
								block: [ :easyC | self refreshList ])