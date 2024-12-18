Class {
	#name : 'PKSpatialUnit',
	#superclass : 'CMSpatialEntityElement',
	#instVars : [
		'area',
		'fertilitylevel'
	],
	#category : 'Parcage-Model',
	#package : 'Parcage-Model'
}

{ #category : 'accessing' }
PKSpatialUnit >> area [

	^ area
]

{ #category : 'accessing' }
PKSpatialUnit >> area: anObject [

	area := anObject
]

{ #category : 'accessing' }
PKSpatialUnit >> fertilitylevel [

	^ fertilitylevel
]

{ #category : 'accessing' }
PKSpatialUnit >> fertilitylevel: anObject [

	fertilitylevel := anObject
]

{ #category : 'initialization' }
PKSpatialUnit >> initialize [ 
	super initialize.
	fertilitylevel := self randomBetween: 1 and: 10
]

{ #category : 'pov-fertility' }
PKSpatialUnit >> pov [ 
	<pov>
	^CMPointOfView color: Color brown 
]

{ #category : 'pov-fertility' }
PKSpatialUnit >> povFertilityLevel [
	<pov>
	^CMPointOfView color: (self
		colorAttribute: #fertilitylevel  
		min: 1
		max: 10
		color: Color brown)
]
