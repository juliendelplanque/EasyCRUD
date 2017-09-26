tests-queries generation
testSerializeDate
	| date |
	date := Date year: 2012 month: 12 day: 13. 
	self assert: (adapter serializeDate: date) equals: '''2012-12-13'''