api
set1NRelationFrom: fromFieldName to: toFieldName in: tableName
	oneToNRelations add: { fromFieldName . toFieldName . tableName }