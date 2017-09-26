tests-queries generation
testSerializeIdentifier
	self assert: (adapter serializeIdentifier: 'id' asECRUDIdentifier) equals: 'id'