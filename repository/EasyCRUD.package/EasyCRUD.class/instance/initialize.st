initialization
initialize
	super initialize.
	fieldsAliases := OrderedDictionary new.
	addFieldsNames := #().
	editFieldsNames := #().
	requiredFieldsNames := #().
	self
		subject: '';
		rowActions: OrderedCollection new;
		tableActions: OrderedCollection new