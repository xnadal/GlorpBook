Class {
	#name : #GlorpBookDescriptorSystem,
	#superclass : #DescriptorSystem,
	#category : #GlorpBook
}

{ #category : #accessing }
GlorpBookDescriptorSystem >> allTableNames [
	"Return a list of all the table names that this system uses."
	^#('Person')
]

{ #category : #'as yet unclassified' }
GlorpBookDescriptorSystem >> classModelForPerson: aClassModel [
	aClassModel newAttributeNamed: #id.
	aClassModel newAttributeNamed: #firstName.
	aClassModel newAttributeNamed: #lastName.
	aClassModel newAttributeNamed: #birthDate
]

{ #category : #accessing }
GlorpBookDescriptorSystem >> descriptorForPerson: aDescriptor [
	| table |
	table := self tableNamed: 'PERSON'.
	aDescriptor table: table.
	aDescriptor directMappingFor: #id.
	(aDescriptor newMapping: DirectMapping)
		from: #firstName
		to: (table fieldNamed: 'firstName').
	(aDescriptor newMapping: DirectMapping)
		from: #lastName
		to: (table fieldNamed: 'lastName').
	(aDescriptor newMapping: DirectMapping)
		from: #birthDate
		to: (table fieldNamed: 'birthDate')
]

{ #category : #tables }
GlorpBookDescriptorSystem >> tableForPERSON: aTable [
	(aTable createFieldNamed: 'id' type: platform serial)
		bePrimaryKey.
	aTable
		createFieldNamed: 'firstName'
		type: (platform varChar: 100).
	aTable
		createFieldNamed: 'lastName'
		type: (platform varChar: 100).
	aTable
		createFieldNamed: 'birthDate'
		type: platform date.
]
