initialization
initialize
	super initialize.
	fieldsAliases := Dictionary new.
	addFieldsNames := #().
	editFieldsNames := #().
	requiredFieldsNames := #().
	self
		subject: '';
		rowActions: OrderedCollection new;
		tableActions: OrderedCollection new