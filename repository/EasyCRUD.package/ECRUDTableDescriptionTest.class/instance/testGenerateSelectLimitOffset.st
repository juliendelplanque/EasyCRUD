tests-query generation
testGenerateSelectLimitOffset
	| query |
	query := tableDescription generateSelect: #('ID' 'NAME' 'AGE' 'ADDRESS' 'SALARY') limit: 3 offset: 5.
	
	self
		assert: query tableIdentifier equals: 'COMPANY' asECRUDIdentifier;
		assertCollection: query fieldsSelected hasSameElements: (#('COMPANY.ID' 'COMPANY.NAME' 'COMPANY.AGE' 'COMPANY.ADDRESS' 'COMPANY.SALARY') collect: #asECRUDIdentifier);
		assert: query limitSize equals: 3;
		assert: query offset equals: 5