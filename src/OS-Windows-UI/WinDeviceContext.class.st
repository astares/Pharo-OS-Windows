"
This class represents a windows device context
"
Class {
	#name : #WinDeviceContext,
	#superclass : #WinHandle,
	#category : #'OS-Windows-UI-Graphics'
}

{ #category : #accessing }
WinDeviceContext class >> desktopDeviceContext [
	<script: 'self desktopDeviceContext inspect'>
	
	^WinWindow desktopWindow deviceContext 
]

{ #category : #accessing }
WinDeviceContext class >> pharoWindowDeviceContext [
	<script: 'self pharoWindowDeviceContext inspect'>
	
	^WinWindow pharoWindow deviceContext 
]

{ #category : #drawing }
WinDeviceContext >> drawEllipse: aRectangle [

	^self ellipseLeft: aRectangle left top: aRectangle top  right: aRectangle right bottom: aRectangle bottom
]

{ #category : #drawing }
WinDeviceContext >> drawLineFrom: aPoint to: anotherPoint [

	self moveToX: aPoint x y: aPoint y.
	self lineToX: anotherPoint x y: anotherPoint y  
]

{ #category : #drawing }
WinDeviceContext >> drawRectangle: aRectangle [

	^self rectangleLeft: aRectangle left top: aRectangle top  right: aRectangle right bottom: aRectangle bottom
]

{ #category : #drawing }
WinDeviceContext >> ellipseLeft: nLeftRect top: nTopRect right: nRightRect bottom: nBottomRect [
	"The Ellipse function draws an ellipse. The center of the ellipse is the center of the specified bounding rectangle. The ellipse is outlined by using the current pen and is filled by using the current brush."

	^self ffiCall: #(BOOL Ellipse(
			HDC self ,	  
   			int nLeftRect,	 
	     		int nTopRect,	 
            	int nRightRect,	 
            	int nBottomRect)) 
		module: #gdi32

]

{ #category : #drawing }
WinDeviceContext >> lineToX:  nXEnd y: nYEnd [
	 
	^self ffiCall: #(BOOL LineTo(HDC self, int nXEnd, int nYEnd)) module: #gdi32

]

{ #category : #drawing }
WinDeviceContext >> moveToX:  x y: y [
	
	^self ffiCall: #(BOOL MoveToEx(HDC self, int x, int y, 0)) module: #gdi32

]

{ #category : #primitives }
WinDeviceContext >> rectangleLeft: nLeftRect top: nTopRect right: nRightRect bottom: nBottomRect [
		
	^self ffiCall: #(BOOL Rectangle(
			HDC self ,	  
   			int nLeftRect,	 
	     	int nTopRect,	 
         int nRightRect,	 
         	int nBottomRect)) 
		module: #gdi32

]
