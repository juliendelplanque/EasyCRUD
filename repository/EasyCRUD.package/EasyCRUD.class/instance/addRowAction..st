api
addRowAction: anECRUDAction
	self rowActions
		add: anECRUDAction.
	anECRUDAction
		easyCrud: self