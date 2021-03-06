ILElementTest subclass: ILAnchorElementTest [
    
    <comment: nil>
    <category: 'Iliad-Tests-Unit-Elements'>

    setUp [
	<category: 'running'>
	e := ILAnchorElement new
    ]

    testAccessKey [
	<category: 'testing'>
	e accesskey: $a.
	self shouldHaveAttribute: 'accesskey' value: 'a'
    ]

    testCircularShape [
	<category: 'testing'>
	e circleShape.
	self shouldHaveAttribute: 'shape' value: 'circle'
    ]

    testCoords [
	<category: 'testing'>
	e coords: 'foo'.
	self shouldHaveAttribute: 'coords' value: 'foo'
    ]

    testDefaultShape [
	<category: 'testing'>
	e defaultShape.
	self shouldHaveAttribute: 'shape' value: 'default'
    ]

    testPolygonalShape [
	<category: 'testing'>
	e polyShape.
	self shouldHaveAttribute: 'shape' value: 'poly'
    ]

    testRectangularShape [
	<category: 'testing'>
	e rectShape.
	self shouldHaveAttribute: 'shape' value: 'rect'
    ]

    testShape [
	<category: 'testing'>
	e shape: 'foo'.
	self shouldHaveAttribute: 'shape' value: 'foo'
    ]

    testTabIndex [
	<category: 'testing'>
	e tabindex: 3.
	self shouldHaveAttribute: 'tabindex' value: '3'
    ]

    testTag [
	<category: 'testing'>
	self assert: e tag = 'a'
    ]
]

