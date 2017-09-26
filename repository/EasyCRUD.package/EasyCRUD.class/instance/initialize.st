initialization
initialize
	super initialize.
	fieldsAliases := OrderedDictionary new.
	addFieldsNames := #().
	editFieldsNames := #().
	displayFieldsNames := #().
	requiredFieldsNames := #().
	oneToNRelations := OrderedCollection new.
	self
		subject: '';
		rowActions: OrderedCollection new;
		tableActions: OrderedCollection new