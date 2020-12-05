Class {
	#name : #StCatalogProjectTest,
	#superclass : #TestCase,
	#category : #'NewTools-Catalog-Tests-Model'
}

{ #category : #tests }
StCatalogProjectTest >> testInstanceCreation [
	|dic project |
	dic := { #name -> 'Sample project'.
				#baseline -> 'BasleinOfProject'.
				#repositoryURL -> 'https://github.com/user/project/project.git'.
				#description -> 'Sample project' } asDictionary.

	project := StCatalogProject fromDictionary: dic.

	self assert: project name equals: 'Sample project'
]

{ #category : #tests }
StCatalogProjectTest >> testInstanceCreationFromEmptyDictionary [
	|dic project |
	dic := #() asDictionary.

	project := StCatalogProject fromDictionary: dic.
	
	self assert: project name equals: 'Unnamed Project'.
	self assert: project baseline isEmpty.
	self assert: project description isEmpty.
	self assert: project repositoryURL isEmpty.	
]
