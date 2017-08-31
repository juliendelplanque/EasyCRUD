tests-query generation
testGenerateSelectAllRowsForFieldsNamed
	| query |
	query := tableDescription generateSelectAllRowsForFieldsNamed: #('ID' 'NAME' 'AGE' 'ADDRESS' 'SALARY').
	
	self
		assert: query tableIdentifier equals: 'COMPANY';
		assertCollection: query fieldsSelected hasSameElements: #('ID' 'NAME' 'AGE' 'ADDRESS' 'SALARY')