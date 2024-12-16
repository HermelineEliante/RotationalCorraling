Class {
	#name : 'PKModel',
	#superclass : 'CMAbstractModel',
	#instVars : [
		'theSpatialUnits'
	],
	#category : 'Parcage-Model',
	#package : 'Parcage-Model'
}

{ #category : 'as yet unclassified' }
PKModel class >> aboutThisModel [

	^ ''
]

{ #category : 'as yet unclassified' }
PKModel class >> prefix [

	^ 'PK'
]

{ #category : 'accessing' }
PKModel >> initMap [

	<init>
	self
		createGridNumberOfRows: 20
		numberOfColumns: 20
		neighbourhood: 4
		closed: true
]

{ #category : 'accessing' }
PKModel >> initialize [ 
super initialize.
theSpatialUnits := OrderedCollection new
]

{ #category : 'accessing' }
PKModel >> step: t [
 	<control>
]

{ #category : 'accessing' }
PKModel >> theSpatialUnits [
<getterFor: #PKSpatialUnit>
	^ theSpatialUnits
]

{ #category : 'accessing' }
PKModel >> theSpatialUnits: anObject [

	theSpatialUnits := anObject
]
