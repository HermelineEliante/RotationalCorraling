Class {
	#name : 'PKCattleBatch',
	#superclass : 'CMAgent',
	#traits : 'TCMLocated',
	#classTraits : 'TCMLocated classTrait',
	#instVars : [
		'numberOfHeads',
		'dailyForrageNeed'
	],
	#classInstVars : [
		'minNumberOfHeads',
		'maxNumberOfHeads'
	],
	#category : 'Parcage-Model',
	#package : 'Parcage-Model'
}

{ #category : 'initialization' }
PKCattleBatch class >> initializeParameters [ 
	super initializeParameters.
	minNumberOfHeads := 15.
	maxNumberOfHeads :=150
]

{ #category : 'accessing' }
PKCattleBatch class >> maxNumberOfHeads [

	^ maxNumberOfHeads
]

{ #category : 'accessing' }
PKCattleBatch class >> maxNumberOfHeads: anObject [

	maxNumberOfHeads := anObject
]

{ #category : 'accessing' }
PKCattleBatch class >> minNumberOfHeads [

	^ minNumberOfHeads
]

{ #category : 'accessing' }
PKCattleBatch class >> minNumberOfHeads: anObject [

	minNumberOfHeads := anObject
]

{ #category : 'accessing' }
PKCattleBatch >> dailyForrageNeed [

	^ dailyForrageNeed
]

{ #category : 'accessing' }
PKCattleBatch >> dailyForrageNeed: anObject [

	dailyForrageNeed := anObject
]

{ #category : 'initialization' }
PKCattleBatch >> initialize [ 
	super initialize.
	"numberOfHeads := 15."
	"numberOfHeads := self randomIntegerBetween: 15 and: 150"
	
	numberOfHeads := self
		randomIntegerBetween: self class minNumberOfHeads 
		and: self class maxNumberOfHeads 
]

{ #category : 'accessing' }
PKCattleBatch >> numberOfHeads [

	^ numberOfHeads
]

{ #category : 'accessing' }
PKCattleBatch >> numberOfHeads: anObject [

	numberOfHeads := anObject
]

{ #category : 'pov' }
PKCattleBatch >> pov [ 
	<pov>
	^ CMPointOfView color: Color white 
]

{ #category : 'pov' }
PKCattleBatch >> povImage [ 
	<pov>
	^ CMPointOfView image: CMBrownCow standing first size: numberOfHeads / 150 * 2
	
	"
	15 / 150 * 2 = 0.2
	150 / 150 * 2 = 2
	"
]

{ #category : 'pov' }
PKCattleBatch >> povNumberOfHeads [
	<pov>
	^ CMPointOfView color:(self
		colorAttribute: #numberOfHeads  
		min: 15
		max: 150
		color: Color red)
]
