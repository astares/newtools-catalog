"
A project in a catalog
"
Class {
	#name : #StCatalogProject,
	#superclass : #Object,
	#instVars : [
		'name',
		'baseline',
		'description',
		'repositoryURL'
	],
	#category : #'NewTools-Catalog-Model'
}

{ #category : #'instance creation' }
StCatalogProject class >> fromDictionary: aDictionary [

	^self new
		initFromDictionary: aDictionary;
		yourself
]

{ #category : #accessing }
StCatalogProject >> baseline [

	^ baseline
]

{ #category : #accessing }
StCatalogProject >> baseline: anObject [

	baseline := anObject
]

{ #category : #accessing }
StCatalogProject >> description [

	^ description
]

{ #category : #accessing }
StCatalogProject >> description: anObject [

	description := anObject
]

{ #category : #'private - initialization' }
StCatalogProject >> initFromDictionary: aDictionary [

	name := aDictionary at: #name ifAbsent: [ 'Unnamed Project' ].
	baseline := aDictionary at: #baseline ifAbsent: [ '' ].
	repositoryURL := aDictionary at: #repositoryURL ifAbsent: [ '' ].
	description := aDictionary at: #description ifAbsent: [ '' ].
	
]

{ #category : #accessing }
StCatalogProject >> name [

	^ name
]

{ #category : #accessing }
StCatalogProject >> name: anObject [

	name := anObject
]

{ #category : #accessing }
StCatalogProject >> repositoryURL [

	^ repositoryURL
]

{ #category : #accessing }
StCatalogProject >> repositoryURL: anObject [

	repositoryURL := anObject
]
