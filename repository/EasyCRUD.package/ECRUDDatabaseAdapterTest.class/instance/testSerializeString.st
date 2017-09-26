tests-queries generation
testSerializeString
	self assert: (adapter serializeString: 'a string') equals: '"a string"'