tests-stream writing
testWriteIdentifierOn
	self assert: (String streamContents: [ :s | adapter writeIdentifier: 'id' on: s ]) equals: 'id'