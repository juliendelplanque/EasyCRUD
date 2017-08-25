running
setUp
	tableDescription := ECRUDTableDescription new
								name: 'COMPANY';
								pkField: (ECRUDFieldDescription named: 'ID' type: Integer);
								addStringField: 'NAME';
								addIntegerField: 'AGE';
								addStringField: 'ADDRESS';
								addFloatField: 'SALARY';
								yourself.