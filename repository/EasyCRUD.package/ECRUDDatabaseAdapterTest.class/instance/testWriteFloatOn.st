tests-stream writing
testWriteFloatOn
	self assert: (String streamContents: [ :s | adapter writeFloat: 0.5 on: s ]) equals: '0.5'