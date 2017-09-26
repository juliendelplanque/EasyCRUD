tests-queries generation
testSerializeFraction
	self assert: (adapter serializeFraction: 1/2) equals: '0.5'