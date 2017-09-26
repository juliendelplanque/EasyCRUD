tests-query generation
testGenerateSelectAllRowsForFieldsNamed
	| query |
	query := tableDescription generateSelectAllRowsForFieldsNamed: #('ID' 'NAME' 'AGE' 'ADDRESS' 'SALARY').
	
	self
		assert: query tableIdentifier equals: 'COMPANY' asECRUDIdentifier;
		assertCollection: query fieldsSelected hasSameElements: (#('COMPANY.ID' 'COMPANY.NAME' 'COMPANY.AGE' 'COMPANY.ADDRESS' 'COMPANY.SALARY') collect: #asECRUDIdentifier)