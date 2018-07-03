"
Provide an icon cache 
"
Class {
	#name : #QACToolIcons,
	#superclass : #Object,
	#classVars : [
		'IconCache'
	],
	#category : 'QuickAccess-Tools-UI-Utilities'
}

{ #category : #icons }
QACToolIcons class >> actionFolderIcon [
	"Private - Generated method"
	^ self iconCache 
			at: #actionFolderIcon
			ifAbsentPut: [ Form fromBinaryStream: self actionFolderIconContents base64Decoded readStream ].
]

{ #category : #'private - icons content' }
QACToolIcons class >> actionFolderIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABdElEQVR42mNkoBAwwhhdbT7Z
xvqa4b9/fmT+++sT45vXz3+XNB3qfP36/3ag9H+8BvT1xCdkJljN5WD4z8TwGyjwC6gDiDfs
OfgpumhF/Pfv/zfiMoQxNibQua0lfPvv729Z///+w/Dvzx8Gpn8MDOysrAyM//4z7D1x9dOr
D99WiYvyfv737zfDv79ANUD6z68fDMvXn9rIuGBBZ018NH8zw1+gcUCNcJogm5EhrnbyZMZ5
81prEqOFm4nXCGMzMsTWTpjMOHdOU01StFgzabZDXBBT2zeZcc6suprkGKlmkImkGhJd1z2Z
cdaM6prUGNlmkImkhkNUXcdkxpnTymvSYhSbMRQR4YXIurbJjNOnFtdkxKhiD0QCsRBR3zyZ
cdrkgprMGI1m0myHxEJ4fcNkxikTc2qyY3TJ8AIDQ1h97WRGaysdM011qeh///8w/v8HSmV/
GP7/+8sA5DOg8EH0fxD/L1z87OW3W+GZieLcSC4AAOV6G9lUA/2gAAAAAElFTkSuQmCC'
]

{ #category : #icons }
QACToolIcons class >> actionFolderNewIcon [
	"Private - Generated method"
	^ self iconCache 
			at: #actionFolderNewIcon
			ifAbsentPut:[ (self actionFolderIcon asFormOfDepth: 32)
					mergeWith: (Form fromBinaryStream: self newObjectOverlayIconContents base64Decoded readStream) at: 9@0
				].
]

{ #category : #icons }
QACToolIcons class >> actionFolderWithActionsIcon [
	"Private - Generated method"
	
	^ self iconCache 
			at: #actionFolderWithActionsIcon
			ifAbsentPut: [ Form fromBinaryStream: self actionFolderWithActionsIconContents base64Decoded readStream ].

]

{ #category : #'private - icons content' }
QACToolIcons class >> actionFolderWithActionsIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAACDElEQVR42mNkIAKwC0gxySlp
aOgbGAZramjoXbt2/dLFi+fWPr5/6wYjTJGVpUJ2WKBV+P+/X5n//fnG+Pbt69+90y92/vz5
f7uqkZNmTVnBdD8vF5vf/5mZmP7/+bdu0/YjHb2TM8EGmJmqJBzYVjKXk5GBieE3UOAXA8N/
IF6+Ze+nuJI18QGxhXpzJrXU//rHzLRg9z2GYFs5Bh7Wv/+SsssbGCUlxZyPHe7f/v/3B9b/
v/8w/Pvzh4HpH9DZrKwMjP/+M2w9cOHTzXdKb2vKyxW//vzLUDH3HEOAlRyDlZYIQ2Vt80FG
Pz/nmo1rQ5sZ/gJtBmqE00jsVbveMDh45jH8+MvCsOP0EwZXY2mGf7++MSQlx5xg9PV1rNm0
JrwZm0YY+/b9jwwXn0gwmFn7MrCwczJ8+fyZ4ejetQwTJnUuZfT1cajZtDqiGZftIPzv93+G
u48+Mpy89o3h008uBh6mrwwW6jwM0aV9Uxh9vO1qNq+OArqAkQGfIdjYplE1kxm9vWxqtqyK
AbqAkQFfOGBjm0RXAQ3wtKrZsjKuGUMRQUMYgQZUTmb08rSo2boiAXsg4jWEkcE4tmIyo6eH
ec225YnNpNkOYgMNiCubzOjhblqzfVkKGV5gYDCKK5nMyMvLZaajLRfN8P8f4////xiQMcP/
vwz/wDSqOAzfvvdlKzwzkQsoNgAAN3g+0FoQDRoAAAAASUVORK5CYII='
]

{ #category : #icons }
QACToolIcons class >> actionIcon [
	"Private - Generated method"
	^ self iconCache 
			at: #actionIcon
			ifAbsentPut: [ Form fromBinaryStream: self actionIconContents base64Decoded readStream ].
]

{ #category : #'private - icons content' }
QACToolIcons class >> actionIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0
RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAJfSURBVDjLpZNNbxJRFIb7A/wF
/A5YunTDrpouujNxY8LGxEVTVyU11UVjCmEsUUyb1gYqEWuqtqmRWukUimksH6UMHwIW6FCY
wWFgYBjKcc6FGam68ybvZuY87/m4544BwNiobiyCQZVJlVnV5FDm4TfDn/Gj4DVVxgdvBIvv
4IwKHafp2MkpF40nuP2jJP1qL0dNeXkLxmDsFYMhfN0TKFujp1mGrQkgSl1QLvtEjZYMpQoP
waM4s7STtWKsZqIZGBGOJ7+L7Y4CeCS5B7zYBU5Vs9Mj30RJhv1wRHRtpdDESAywLywbM2tw
VZCh8lOGt+EKsHUZyvUOlPiObrKzG2TurbHYjgENTD76B4Vlj8II3noYgI3DCoHPam0iPMnc
OTi8IQpZNDAHv6Vo7BlLRVDLenN2j+h1iCVwodoGoaXARV2C5fV3NLJoMBmJnXA4rFqjS2DM
WOTaKvyZaOJRCPwxDnIViRjJyiWsudc5ZInBcTRODLB8DcZAAs8dwPiMn/zLstKwii4sr7zU
DcxfviboutiBhqTovWLgxBx9Bc6ct8jNpIt1cLjcegsmtz9DFUo16PeBgPkLiZQ7PvOJwAim
yy1IlVrQ7fVh9zABVucHfYiG+56qxR8IM5wwmDJmQyGsgclSkyTIqNntz1aZO8704Bq1RXJs
RK2bHwMiyw8C601FrwaXCTOnizzYXB5x2rH1e5FGV3neHbauejeZUCQDBVYgM8GeE3kOtgNR
mHcsMVP293+v8uhjuvsib5l9vk09WVyhHU+d3IKd4h7bXPS0zUfdppL/fkz/85x/AR14FVfM
wp4lAAAAAElFTkSuQmCC'
]

{ #category : #icons }
QACToolIcons class >> actionManagerIcon [
	"Private - Generated method"
	^ self iconCache 
			at: #actionManagerIcon
			ifAbsentPut:[ Form fromBinaryStream: self actionManagerIconContents base64Decoded readStream ].
]

{ #category : #'private - icons content' }
QACToolIcons class >> actionManagerIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAAK/INwWK6QAAABl0
RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAF1SURBVBgZpcGxalRBFMfh35yZ
GwK72mrrO2yxoIXFvIBNGksrsbISFGuxMRDIGwhiCtttrq9hCgWxSLtVsor3nvN3RwxcggTC
fl+SxC7So+cfnz14uHi73mgmAREoAg9HIUKB3AkJueMR3N4bLk5Pz158endwXBb3F0fd/szu
7HMTs4uNHwHHZTPINutzburnIKN5+f6r/ufVh2+6zpM3n7VFkYJmtVrRdR21VqbW57/wUfgo
XMFvF/fu3sLDaQoSTdd11Fq5quRCSk7KIodRRtHE6DTFw7nU9z1NrZVL2cBSpiTwJNyCJjxo
TCGa5XJJU2tlKicwA8uQS2IvZ5oIp7EIZ6rve6ZSMYpBNigZLPNXRNCUcRiYqrUyZWyZkQGX
sCSacRhpTB5M9X3PlKWEpQQpkc3IKdEogqZEBM18PqfWylU5JZrMPznThERTzr7/OHl6OByE
O+GBuxMR+DDw+PUXQkLhyEUoUAQRNCdsJUnswtjRH6iT+f+z/UsKAAAAAElFTkSuQmCC'
]

{ #category : #icons }
QACToolIcons class >> actionNewIcon [
	"Private - Generated method"
	^ self iconCache 
			at: #actionNewIcon
			ifAbsentPut: [ (self actionIcon asFormOfDepth: 32)
					mergeWith: (Form fromBinaryStream: self newObjectOverlayIconContents base64Decoded readStream) at: 9@0
				].
]

{ #category : #icons }
QACToolIcons class >> executeIcon [
	"Private - Generated method"
	^ self iconCache 
			at: #executeIcon
			ifAbsentPut:[ Form fromBinaryStream: self executeIconContents base64Decoded readStream ].
]

{ #category : #'private - icons content' }
QACToolIcons class >> executeIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABOElEQVR4XqWToW7EMAyGe09y
qOxQWVhYWGFZYWlgBgNDS4NLi086ttENTTo+urfw8rt1lnbdJm2WfiW1nS9unFSn0/+s2jvu
b3caZkcqtFR7zcIcPsR+BCCpCYb8S82Kj4GmpHD1NExDBh0CEDBjl5IdL4ZhHK92lWMhp4RU
UjbvPNsEsHR7vZEYIPCVQq78TiW7t7EjO/WsEiAQiYmkCgaA2CeAaA8QiMTdelYbgPGfmp9n
OrKn9weOA4DuZMA5fTROZR0BUJXE+2jpXAJAu/gmaw/At8R0qrZLZ7CpAAeixza1aFEJwFz8
JrZ82LpoZW7jJeg1qDMAowqaBT8A2B25mzZKFWpcysNCqAkqLVakI/wdx5Dz5SKVENBNXJKH
dLEgzOFD7NurvH9MddD5MdXrwl8f01/sA1pWx79GGG42AAAAAElFTkSuQmCC'
]

{ #category : #icons }
QACToolIcons class >> exportIcon [
	"Private - Generated method"
	^ self iconCache 
			at: #exportIcon
			ifAbsentPut:[ Form fromBinaryStream: self exportIconContents base64Decoded readStream ].
]

{ #category : #'private - icons content' }
QACToolIcons class >> exportIconContents [

	^'R0lGODlhEAAQANUAAD8/nz9fn0xnl1FtnlFsnVRvoVBtnVNwoVFtnVJunVh0pFh0o1h1o1l1
o1x4p198q2B9q197qGN/rWR/rWaCr4WhzYahzZ2z1l99q199qmOArYWizYaizYaizJCq0qe7
2qe82q/B3TNwpDNwo0B3pw1cmv///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAACYALAAA
AAAQABAAAAZmQJNwSCwaj0gjaVQqJYkkkfMpLEWppimJCjBGKGBiYAguh0KUYZd8pmhCGolw
TJRIQpPHB/LMgDAOFw5PgQ4NHgkKDAuMjY0eCwccHBscFpUbGx0cFZQFAgYGAwgGpKEIqASo
WERBADs='
]

{ #category : #'private - accessing' }
QACToolIcons class >> iconCache [
	<script: 'self iconCache inspect'>
	
	^ IconCache ifNil: [ IconCache := Dictionary new ]
]

{ #category : #icons }
QACToolIcons class >> importIcon [
	"Private - Generated method"
	^ self iconCache 
			at: #importIcon
			ifAbsentPut: [ Form fromBinaryStream: self importIconContents base64Decoded readStream ].
]

{ #category : #'private - icons content' }
QACToolIcons class >> importIconContents [

	^'R0lGODlhEAAQANUAAD8/nz9fn1FtnlFsnVRvoVBtnVNwoVFtnVh0pFh0o1h1o1l1o1x4p198
q2B9q2N/rWR/rWaCr4WhzYahzZ2z1l99q199qmOArYWizYaizYaizJCq0qe72qe82q/B3TNw
pDNwo0B3pw1cmv///wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAEAACMALAAA
AAAQABAAAAZkwJFwSCwaj8YAEglYHpXOYjNKFAlDxog2MhSFPsKt1uPhXj/WUYQcuXgujytI
lH48PJAGx+G0dCoMFAxOgQwLGwkICgmMjY2IBhkZGBkTlBgYGhkSkwQHBQUCn5+gB6YDplRE
QQA7'
]

{ #category : #'private - icons content' }
QACToolIcons class >> newObjectOverlayIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAAAcAAAAHCAYAAADEUlfTAAAAfUlEQVR42mNkQAK7pqv9d8u8
xQjjMyJLuKSdZNgzy5wBpgBMbJ2o/B/E8sw+w7B9qglYsXfeXUbGdV3y//2zNkC0/0eYt3Fa
AETn0iYpsHB4aifDqtnlYEVR9c8Y4XbOqxT7H5uSy7B4zmSGpPZXjCgOAoGZJcL/03vewsUA
96grXmlnp/UAAAAASUVORK5CYII='
]

{ #category : #'private - utilities' }
QACToolIcons class >> reset [
	<script>
	
	IconCache := nil
]

{ #category : #icons }
QACToolIcons class >> saveIcon [ 
	"Private - Generated method"
	^ self iconCache 
			at: #saveIcon
			ifAbsentPut: [ Form fromBinaryStream: self saveIconContents base64Decoded readStream ].
]

{ #category : #'private - icons content' }
QACToolIcons class >> saveIconContents [

	^'iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABvklEQVR4Xq2R7StDYRjG/Zmi
RK0oPpC05m2yaBGRvKxh886UMmkh24eDLNopInaU2Ludsc5sNuH23PdzznFG++bUr+fl+t3X
6XSq/uURL29gyDmv02YbhO3DwB/w3ujhHBXYHfOQyxcIn3ACX5/vFcFcc+0OFy8YmHZBVslD
Npen5rdSqYyCYY+55g7OqAW2KTfI2VeQX15JkHMlA0VIM7Qz5egy+ifdvMA6sQBxOQcJWSHh
IfNWxiOtBQJz9BCco4KusUV4TGbhgYGClFJASiq03ql7WlPqC1S3m81RgXlkCaToM4FCVJyr
COZ3kReQIs9gHl3iBe3Dy3B1n2HI4BXCZb/qN15BIg99nKOCVvsKiNITiOE0h/ZPEAob7lRC
lKcpwzkqaBlYheB1kpHSV1Pf+h8wOyW418zmqKCpfw2OLhIgXMQZCZKLxY8y8PvxXiCP02hb
4wUm6zr4QzEiIMZInPbe6gw5Zwm8x9wvxsnFMxU09GzA/lmUcx6lYDek6KzsbBF4r3kHzKvv
3eAFdV0e8AUjOigaf111x7j+CUYP56hg7/gSajs3odbiYSvDsqnigRpt36llnp8z238DX//Z
Q5QJ+YoAAAAASUVORK5CYII='
]
