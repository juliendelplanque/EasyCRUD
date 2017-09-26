tests-queries generation
testSerializeFloat
	self assert: (adapter serializeFloat: 0.5) equals: '0.5'