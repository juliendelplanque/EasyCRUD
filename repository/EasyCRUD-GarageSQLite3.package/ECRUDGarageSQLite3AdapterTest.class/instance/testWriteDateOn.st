tests-stream writing
testWriteDateOn
	| date |
	date := Date year: 2012 month: 12 day: 13. 
	self assert: (String streamContents: [ :s | adapter writeDate: date on: s ]) equals: '''2012-12-13'''