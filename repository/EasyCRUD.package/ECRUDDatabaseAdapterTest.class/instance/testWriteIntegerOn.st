tests-stream writing
testWriteIntegerOn
	self assert: (String streamContents: [ :s | adapter writeInteger: 42 on: s ]) equals: '42'