"
https://books.pharo.org/booklet-Glorp/html/glorp.html

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

login := Login new
  database: UDBCSQLite3Platform new;
  host: SmalltalkImage current imageDirectory fullName;
  databaseName: TheDatabaseName;
  password: '';
  yourself.

PharoDatabaseAccessor DefaultDriver: GlorpSQLite3Driver. 

login := Login new
  database: SQLite3Platform new;
  host: SmalltalkImage current imageDirectory fullName;
  databaseName: 'glorpbook.db';
  password: '';
  yourself.

accessor := DatabaseAccessor forLogin: login.
accessor login.

login secure: true.


accessor isLoggedIn.

"
Class {
	#name : #Person,
	#superclass : #Object,
	#instVars : [
		'id',
		'firstName',
		'lastName',
		'birthDate'
	],
	#category : #GlorpBook
}

{ #category : #accessing }
Person >> birthDate [
	^birthDate
]

{ #category : #accessing }
Person >> birthDate: aDate [
	birthDate := aDate
]

{ #category : #accessing }
Person >> firstName [
	^ firstName
]

{ #category : #accessing }
Person >> firstName: aString [
	firstName := aString
]

{ #category : #accessing }
Person >> initialize [
	super initialize.
	birthDate := '1/1/1970' asDate
]

{ #category : #accessing }
Person >> lastName [
	^lastName
]

{ #category : #accessing }
Person >> lastName: aString [
	lastName := aString
]
