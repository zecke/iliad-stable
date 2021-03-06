"======================================================================
|
|   Iliad.ILDecorator class definition
|
 ======================================================================"

"======================================================================
|
| Copyright (c) 2008-2010 
| Nicolas Petton <petton.nicolas@gmail.com>,
| Sébastien Audier <sebastien.audier@gmail.com>
|
| Some parts of this file reuse code from the Seaside framework written 
| by Avi Bryant, Julian Fitzell, Lukas Renggli, Michel Bany, Philippe
| Marschall and Seaside contributors http://www.seaside.st 
|
| This file is part of the Iliad framework.
|
| Permission is hereby granted, free of charge, to any person obtaining
| a copy of this software and associated documentation files (the 
| 'Software'), to deal in the Software without restriction, including 
| without limitation the rights to use, copy, modify, merge, publish, 
| distribute, sublicense, and/or sell copies of the Software, and to 
| permit persons to whom the Software is furnished to do so, subject to 
| the following conditions:
|
| The above copyright notice and this permission notice shall be 
| included in all copies or substantial portions of the Software.
|
| THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, 
| EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
| MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
| IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
| CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
| TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
| SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.  
|
 ======================================================================"



ILBuildable subclass: ILDecorator [
    | decoratee |
    
    <category: 'Iliad-Core-Buildables'>
    <comment: 'I am a decorator for Widgets. I can be added to a widget by calling #decorateWith: from a widget.
Subclasses can be used to modify the building process of a widget, or change its behavior'>

    ILDecorator class >> decoratee: aDecoratee [
	<category: 'instance creation'>
	^self basicNew
	    decoratee: aDecoratee;
	    initialize;
	    yourself
    ]

    decoratee [
	<category: 'accessing'>
	^decoratee
    ]

    decoratee: aDecoratee [
	<category: 'accessing'>
	decoratee := aDecoratee
    ]

    widget [
	<category: 'accessing'>
	^self decoratee widget
    ]

    contents [
	<category: 'building'>
	^self decoratee contents
    ]

    updateHead: aHead [
	<category: 'building'>
	self decoratee updateHead: aHead
    ]

    styles [
	<category: 'building'>
	^#()
    ]

    scripts [
	<category: 'building'>
	^#()
    ]

    handleAnswer: anAnswer [
	<category: 'decorations'>
	^self decoratee handleAnswer: anAnswer
    ]

    removeDecorator: aDecorator [
	<category: 'decorations'>
	self decoratee removeDecorator: aDecorator
    ]

    removeYourself [
	<category: 'decorations'>
	self decoratee removeDecorator: self
    ]

    isDelegator [
	<category: 'testing'>
	^false
    ]

    isGlobal [
	<category: 'testing'>
	^false
    ]
]
