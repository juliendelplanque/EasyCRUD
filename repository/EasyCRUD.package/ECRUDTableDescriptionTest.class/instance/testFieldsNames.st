tests-accessing
testFieldsNames
	self assertCollection: tableDescription fieldsNames hasSameElements: #('NAME' 'AGE' 'ADDRESS' 'SALARY')