tests-query generation
testGenerateSelectLimitOffset
	| query |
	query := tableDescription generateSelectLimit: 3 offset: 5.
	
	self
		assert: query tableIdentifier equals: 'COMPANY';
		assertCollection: query fieldsSelected hasSameElements: #('ID' 'NAME' 'AGE' 'ADDRESS' 'SALARY');
		assert: query limitSize equals: 3;
		assert: query offset equals: 5