Class {
	#name : 'PKModel',
	#superclass : 'CMAbstractModel',
	#instVars : [
		'theSpatialUnits',
		'theCattleBatches'
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
		closed: true.
		
	self createN: 10 randomlyLocatedAloneEntities: PKCattleBatch 
]

{ #category : 'accessing' }
PKModel >> initSmall [

	<init>
	self
		createGridNumberOfRows: 4
		numberOfColumns: 4
		neighbourhood: 4
		closed: true.
		
	self createN: 4 randomlyLocatedAloneEntities: PKCattleBatch 
]

{ #category : 'accessing' }
PKModel >> initialize [ 
	super initialize.
	theSpatialUnits := OrderedCollection new.
	theCattleBatches := OrderedCollection new.
]

{ #category : 'accessing' }
PKModel >> step: t [
 	<control>
]

{ #category : 'accessing' }
PKModel >> theCattleBatches [ 
<getterFor: #PKCattleBatch >
	^ theCattleBatches 
]

{ #category : 'accessing' }
PKModel >> theCattleBatches: anObject [

	theCattleBatches := anObject
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
