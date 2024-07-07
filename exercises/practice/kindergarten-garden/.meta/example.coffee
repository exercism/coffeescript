class KindergartenGarden
  constructor: (diagram) ->
    @diagram = diagram.split('\n').map (row) ->
      row.split('').map (code) ->
        codes[code]

    @plots = {}
    students.forEach (student, index) =>
      @plots[student] = @diagram.map (row) ->
        plants = []
        position = 2 * index;
        plants.push row[position]
        plants.push row[position + 1]
        plants

  plants: (student) ->
    @plots[student].flat()

students = [
  'Alice',
  'Bob',
  'Charlie',
  'David',
  'Eve',
  'Fred',
  'Ginny',
  'Harriet',
  'Ileana',
  'Joseph',
  'Kincaid',
  'Larry'
]

codes = {
  'G': 'grass',
  'C': 'clover',
  'R': 'radishes',
  'V': 'violets'
}

module.exports = KindergartenGarden
