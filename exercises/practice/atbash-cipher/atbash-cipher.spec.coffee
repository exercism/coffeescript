Atbash = require './atbash-cipher'

describe 'Atbash', ->
  it 'encodes yes', ->
    expect(Atbash.encode('yes')).toBe 'bvh'

  xit 'encodes no', ->
    expect(Atbash.encode('no')).toBe 'ml'

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

  xit 'decodes exercism', ->
    expect(Atbash.decode('vcvix rhn')).toBe 'exercism'

  xit 'decodes a sentence', ->
    expect(Atbash.decode('zmlyh gzxov rhlug vmzhg vkkrm thglm v')).toBe 'anobstacleisoftenasteppingstone'

  xit 'decodes numbers', ->
    expect(Atbash.decode('gvhgr mt123 gvhgr mt')).toBe 'testing123testing'

  xit 'decodes all the letter', ->
    expect(Atbash.decode('gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt')).toBe 'thequickbrownfoxjumpsoverthelazydog'

  xit 'decodes with too many spaces', ->
    expect(Atbash.decode('vc vix    r hn')).toBe 'exercism'

  xit 'decodes with no spaces', ->
    expect(Atbash.decode('zmlyhgzxovrhlugvmzhgvkkrmthglmv')).toBe 'anobstacleisoftenasteppingstone'
