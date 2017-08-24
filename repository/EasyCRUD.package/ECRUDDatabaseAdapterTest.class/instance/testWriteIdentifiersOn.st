tests-stream writing
testWriteIdentifiersOn
	self assert: (String streamContents: [ :s | adapter writeIdentifiers: #('id1' 'id2' 'id3') on: s ]) equals: 'id1,id2,id3'