api
addTableAction: anECRUDAction
	self tableActions
		add: anECRUDAction.
	anECRUDAction
		easyCrud: self