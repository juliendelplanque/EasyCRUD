tests-queries generation
testSerializeInteger
	self assert: (adapter serializeInteger: 42) equals: '42'