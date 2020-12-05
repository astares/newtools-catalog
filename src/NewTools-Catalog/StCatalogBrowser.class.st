"
Catalog presenter
"
Class {
	#name : #StCatalogBrowser,
	#superclass : #StPresenter,
	#instVars : [
		'projectList'
	],
	#category : #'NewTools-Catalog-Spec'
}

{ #category : #specs }
StCatalogBrowser class >> defaultSpec [

	^ SpBoxLayout newVertical
		  add: #projectList;
		  yourself
]

{ #category : #showing }
StCatalogBrowser class >> open [
 	<script>
	
	^self new openWithSpec
]

{ #category : #accessing }
StCatalogBrowser >> initializeWidgets [

	super initializeWidgets.
	projectList := self newTable 
]

{ #category : #accessing }
StCatalogBrowser >> initializeWindow: aWindowPresenter [

	aWindowPresenter
		title:  'CatalogBrowser'
]

{ #category : #accessing }
StCatalogBrowser >> projectList [

	^projectList
]
