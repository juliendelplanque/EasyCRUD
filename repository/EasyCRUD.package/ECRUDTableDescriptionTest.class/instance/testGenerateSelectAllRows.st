tests-query generation
testGenerateSelectAllRows
	| query |
	query := tableDescription generateSelectAllRows.
	
	self
		assert: query tableIdentifier equals: 'COMPANY';
		assertCollection: query fieldsSelected hasSameElements: #('ID' 'NAME' 'AGE' 'ADDRESS' 'SALARY')