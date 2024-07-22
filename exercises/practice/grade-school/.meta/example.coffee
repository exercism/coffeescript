class GradeSchool
  constructor: () ->
    @students = {}

  add: (student, level) ->
    if @students[student]
      false
    else
      @students[student] = level
      true

  grade: (level) ->
    result = []
    for student, grade of @students
        if grade is level
            result.push student
    result.sort()

  roster: () ->
    result = []
    grades = (g for _, g of @students).sort()
    for g in grades.unique()
      result.push (@grade g)...
    result

Array::unique = ->
  output = {}
  output[@[key]] = @[key] for key in [0...@length]
  value for key, value of output

module.exports = GradeSchool
