tests-stream writing
testWriteStringOn
	self assert: (String streamContents: [ :s | adapter writeString: 'a string' on: s ]) equals: '"a string"'