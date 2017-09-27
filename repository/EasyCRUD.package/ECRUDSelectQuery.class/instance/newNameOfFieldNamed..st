accessing
newNameOfFieldNamed: aFieldName
	^ self renameDict
		at: aFieldName asECRUDIdentifier