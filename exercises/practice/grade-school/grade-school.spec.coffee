GradeSchool = require './grade-school'

describe 'Grade School', ->
  school = {}
  beforeEach ->
    school = new GradeSchool

  it 'Roster is empty when no student is added', ->
    expect(school.roster()).toEqual []

  xit 'Add a student', ->
    expect(school.add 'Aimee', 2).toBe true

  xit 'Student is added to the roster', ->
    school.add 'Aimee', 2
    expect(school.roster()).toEqual ['Aimee']

  xit 'Adding multiple students in the same grade in the roster', ->
    expect(school.add 'Blair', 2).toBe true
    expect(school.add 'James', 2).toBe true
    expect(school.add 'Paul', 2).toBe true
  
  xit 'Multiple students in the same grade are added to the roster', ->
    school.add 'Blair', 2
    school.add 'James', 2
    school.add 'Paul', 2
    expect(school.roster()).toEqual ['Blair', 'James', 'Paul']
  
  xit 'Cannot add student to same grade in the roster more than once', ->
    school.add 'Blair', 2
    expect(school.add 'James', 2).toBe true
    expect(school.add 'James', 2).toBe false
    school.add 'Paul', 2
  
  xit 'Student not added to same grade in the roster more than once', ->
    school.add 'Blair', 2
    school.add 'James', 2
    school.add 'James', 2
    school.add 'Paul', 2
    expect(school.roster()).toEqual ['Blair', 'James', 'Paul']

  xit 'Adding students in multiple grades', ->
    expect(school.add 'Chelsea', 3).toBe true
    expect(school.add 'Logan', 7).toBe true

  xit 'Students in multiple grades are added to the roster', ->
    school.add 'Chelsea', 3
    school.add 'Logan', 7
    expect(school.roster()).toEqual ['Chelsea', 'Logan']

  xit 'Cannot add same student to multiple grades in the roster', ->
    school.add 'Blair', 2
    expect(school.add 'James', 2).toBe true
    expect(school.add 'James', 3).toBe false
    school.add 'Paul', 3

  xit 'Student not added to multiple grades in the roster', ->
    school.add 'Blair', 2
    school.add 'James', 2
    school.add 'James', 3
    school.add 'Paul', 3
    expect(school.roster()).toEqual ['Blair', 'James', 'Paul']

  xit 'Students are sorted by grades in the roster', ->
    school.add 'Jim', 3
    school.add 'Peter', 2
    school.add 'Anna', 1
    expect(school.roster()).toEqual ['Anna', 'Peter', 'Jim']
  
  xit 'Students are sorted by name in the roster', ->
    school.add 'Peter', 2
    school.add 'Zoe', 2
    school.add 'Alex', 2
    expect(school.roster()).toEqual ['Alex', 'Peter', 'Zoe']
  
  xit 'Students are sorted by grades and then by name in the roster', ->
    school.add 'Peter', 2
    school.add 'Anna', 1
    school.add 'Barb', 1
    school.add 'Zoe', 2
    school.add 'Alex', 2
    school.add 'Jim', 3
    school.add 'Charlie', 1
    expect(school.roster()).toEqual ['Anna', 'Barb', 'Charlie', 'Alex', 'Peter', 'Zoe', 'Jim']

  xit 'Grade is empty if no students in the roster', ->
    expect(school.grade 1).toEqual []

  xit 'Grade is empty if no students in that grade', ->
    school.add 'Peter', 2
    school.add 'Zoe', 2
    school.add 'Alex', 2
    school.add 'Jim', 3
    expect(school.grade 1).toEqual []

  xit 'Student not added to same grade more than once', ->
    school.add 'Blair', 2
    school.add 'James', 2
    school.add 'James', 2
    school.add 'Paul', 2
    expect(school.grade 2).toEqual ['Blair', 'James', 'Paul']

  xit 'Student not added to multiple grades', ->
    school.add 'Blair', 2
    school.add 'James', 2
    school.add 'James', 3
    school.add 'Paul', 3
    expect(school.grade 2).toEqual ['Blair', 'James']

  xit 'Student not added to other grade for multiple grades', ->
    school.add 'Blair', 2
    school.add 'James', 2
    school.add 'James', 3
    school.add 'Paul', 3
    expect(school.grade 3).toEqual ['Paul']

  xit 'Students are sorted by name in a grade', ->  
    school.add 'Franklin', 5
    school.add 'Bradley', 5
    school.add 'Jeff', 1
    expect(school.grade 5).toEqual ['Bradley', 'Franklin']
