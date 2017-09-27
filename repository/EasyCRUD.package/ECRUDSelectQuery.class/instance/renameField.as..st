accessing
renameField: fieldName as: newFieldName
	self renameDict
		at: fieldName asECRUDIdentifier put: newFieldName asECRUDIdentifier