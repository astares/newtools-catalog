"
A provider of projects
"
Class {
	#name : #StCatalogProvider,
	#superclass : #Object,
	#instVars : [
		'projects'
	],
	#classVars : [
		'Default'
	],
	#category : #'NewTools-Catalog-Model'
}

{ #category : #accessing }
StCatalogProvider class >> catalogSourceURL [

	^'https://raw.githubusercontent.com/astares/pharo-catalog/main/build/scatalog.json'
]

{ #category : #'instance creation' }
StCatalogProvider class >> default [

	^Default ifNil: [ Default := self new ]
]

{ #category : #accessing }
StCatalogProvider class >> loadProjects [

	^self default loadProjects
]

{ #category : #private }
StCatalogProvider >> loadProjects [
	^ [ self retrieveProjects collect: [ :each | StCatalogProject fromDictionary: each ] ]
		on: ConnectionTimedOut do: [ :e | self projects "Answer old version" ] 
]

{ #category : #private }
StCatalogProvider >> projects [

	^projects ifNil: [ projects := OrderedCollection new ]
]

{ #category : #private }
StCatalogProvider >> retrieveProjects [
	^ ZnClient new
		systemPolicy;
		beOneShot;
		timeout: 1;
		setAcceptEncodingGzip;		
		url: self class catalogSourceURL;
		contentReader: [ :entity | STON fromString: entity contents ];
		get
]
