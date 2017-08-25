tests-accessing
testAllFieldsNames
	self assert: tableDescription allFieldsNames equals: #('ID' 'NAME' 'AGE' 'ADDRESS' 'SALARY')