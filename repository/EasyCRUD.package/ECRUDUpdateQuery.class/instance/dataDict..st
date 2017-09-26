accessing
dataDict: aDictionary
	dataDict := (aDictionary associations collect: [ :assoc |
		assoc head asECRUDIdentifier -> assoc tail ]) asDictionary