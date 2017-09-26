tests-query generation
testGenerateSelectAllRowsForFieldsNamed
	| query |
	query := tableDescription generateSelectAllRowsForFieldsNamed: #('ID' 'NAME' 'AGE' 'ADDRESS' 'SALARY').
	
	self
		assert: query tableIdentifier equals: 'COMPANY' asECRUDIdentifier;
		assertCollection: query fieldsSelected hasSameElements: (#('ID' 'NAME' 'AGE' 'ADDRESS' 'SALARY') collect: #asECRUDIdentifier)