Atbash = require './atbash'

describe 'Atbash', ->
  it 'encodes no', ->
    expect(Atbash.encode('no')).toBe 'ml'

  xit 'encodes yes', ->
    expect(Atbash.encode('yes')).toBe 'bvh'

  xit 'encodes OMG', ->
    expect(Atbash.encode('OMG')).toBe 'lnt'

  xit 'encodes O M G', ->
    expect(Atbash.encode('O M G')).toBe 'lnt'

  xit 'encodes a long word', ->
    expect(Atbash.encode('mindblowingly')).toBe 'nrmwy oldrm tob'

  xit 'encodes numbers', ->
    expect(Atbash.encode('Testing, 1 2 3, testing.')).toBe 'gvhgr mt123 gvhgr mt'

  xit 'encodes sentence', ->
    expect(Atbash.encode('Truth is fiction.')).toBe 'gifgs rhurx grlm'

  xit 'encodes all the things', ->
    expect(Atbash.encode('The quick brown fox jumps over the lazy dog.')).toBe 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt'
