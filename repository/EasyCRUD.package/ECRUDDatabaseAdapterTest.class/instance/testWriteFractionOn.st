tests-stream writing
testWriteFractionOn
	self assert: (String streamContents: [ :s | adapter writeFraction: 1/2 on: s ]) equals: '0.5'