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

{ #category : 'accessing' }
PKSpatialUnit >> pov [ 
	<pov>
	^CMPointOfView color: Color brown 
]
