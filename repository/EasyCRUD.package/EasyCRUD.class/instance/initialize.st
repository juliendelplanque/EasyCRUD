initialization
initialize
	super initialize.
	fieldsAliases := Dictionary new.
	addFieldsNames := #().
	editFieldsNames := #().
	requiredFieldsNames := #().
	self
		subject: '';
		actions: OrderedCollection new