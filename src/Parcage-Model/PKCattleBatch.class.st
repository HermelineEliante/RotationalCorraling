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

{ #category : 'accessing' }
PKCattleBatch >> numberOfHeads [

	^ numberOfHeads
]

{ #category : 'accessing' }
PKCattleBatch >> numberOfHeads: anObject [

	numberOfHeads := anObject
]
