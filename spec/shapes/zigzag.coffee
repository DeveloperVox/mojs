Zigzag = mojs.Zigzag
Bit    = mojs.Bit
ns     = 'http://www.w3.org/2000/svg'
svg    = document.createElementNS?(ns, "svg")

describe 'Zigzag', ->
  it 'should extend Bit', ->
    line = new Zigzag ctx: svg
    expect(line instanceof Bit).toBe(true)
  it 'should add itself to context', ->
    line = new Zigzag ctx: svg
    expect(svg.firstChild).toBeDefined()
  describe 'methods ->', ->
    describe 'draw method ->', ->
      it 'should add properties to el', ->
        zigzag = new Zigzag
          ctx:    document.createElementNS?(ns, "svg")
          radius: 20
      it 'should define points', ->
        zigzag = new Zigzag
          ctx:    document.createElementNS?(ns, "svg")
          radius: 20
        expect(zigzag.el.getAttribute('points')).toBeTruthy()

      it 'should not work with 0 points', ->
        zigzag = new Zigzag
          ctx:    document.createElementNS?(ns, "svg")
          radius: 20
          points: 0
        expect(zigzag.el.getAttribute('points')).toBeFalsy()

