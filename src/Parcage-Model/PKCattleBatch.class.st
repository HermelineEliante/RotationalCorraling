Class {
	#name : 'PKCattleBatch',
	#superclass : 'CMAgent',
	#traits : 'TCMLocated',
	#classTraits : 'TCMLocated classTrait',
	#instVars : [
		'numberOfHeads',
		'dailyForrageNeed',
		'breeder'
	],
	#category : 'Parcage-Model',
	#package : 'Parcage-Model'
}

{ #category : 'accessing' }
PKCattleBatch >> breeder [

	^ breeder
]

{ #category : 'accessing' }
PKCattleBatch >> breeder: anObject [

	breeder := anObject
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
	numberOfHeads := self randomIntegerBetween: 15 and: 150
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
PKCattleBatch >> povNumberOfHeads [
	<pov>
	^ CMPointOfView color:(self
		colorAttribute: #numberOfHeads  
		min: 15
		max: 150
		color: Color red)
]
