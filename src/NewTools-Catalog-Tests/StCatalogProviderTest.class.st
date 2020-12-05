Class {
	#name : #StCatalogProviderTest,
	#superclass : #TestCase,
	#category : #'NewTools-Catalog-Tests-Model'
}

{ #category : #tests }
StCatalogProviderTest >> testLoadingOfProjects [

	self assert: StCatalogProvider loadProjects notEmpty
]

{ #category : #tests }
StCatalogProviderTest >> testRetrievingDefault [

	self assert: StCatalogProvider default notNil

]
