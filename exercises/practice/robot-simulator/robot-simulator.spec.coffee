RobotSimulator = require "./robot-simulator"

describe "RobotSimulator", ->
  describe "Create robot", ->
    it "at origin facing north", ->
      results = new RobotSimulator 0, 0, "north"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "north"

    xit "at negative position facing south", ->
      results = new RobotSimulator -1, -1, "south"
      expect(results.x).toEqual -1
      expect(results.y).toEqual -1
      expect(results.direction).toEqual "south"

  describe "Rotating clockwise", ->
    xit "changes north to east", ->
      results = new RobotSimulator 0, 0, "north"
      results.move "R"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "east"

    xit "changes east to south", ->
      results = new RobotSimulator 0, 0, "east"
      results.move "R"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "south"

    xit "changes south to west", ->
      results = new RobotSimulator 0, 0, "south"
      results.move "R"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "west"

    xit "changes west to north", ->
      results = new RobotSimulator 0, 0, "west"
      results.move "R"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "north"

  describe "Rotating counter-clockwise", ->
    xit "changes north to west", ->
      results = new RobotSimulator 0, 0, "north"
      results.move "L"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "west"

    xit "changes west to south", ->
      results = new RobotSimulator 0, 0, "west"
      results.move "L"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "south"

    xit "changes south to east", ->
      results = new RobotSimulator 0, 0, "south"
      results.move "L"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "east"

    xit "changes east to north", ->
      results = new RobotSimulator 0, 0, "east"
      results.move "L"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "north"

  describe "Moving forward one", ->
    xit "facing north increments Y", ->
      results = new RobotSimulator 0, 0, "north"
      results.move "A"
      expect(results.x).toEqual 0
      expect(results.y).toEqual 1
      expect(results.direction).toEqual "north"

    xit "facing south decrements Y", ->
      results = new RobotSimulator 0, 0, "south"
      results.move "A"
      expect(results.x).toEqual 0
      expect(results.y).toEqual -1
      expect(results.direction).toEqual "south"

    xit "facing east increments X", ->
      results = new RobotSimulator 0, 0, "east"
      results.move "A"
      expect(results.x).toEqual 1
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "east"

    xit "facing west decrements X", ->
      results = new RobotSimulator 0, 0, "west"
      results.move "A"
      expect(results.x).toEqual -1
      expect(results.y).toEqual 0
      expect(results.direction).toEqual "west"

  describe "Follow series of instructions", ->
    xit "moving east and north from README", ->
      results = new RobotSimulator 7, 3, "north"
      results.move "RAALAL"
      expect(results.x).toEqual 9
      expect(results.y).toEqual 4
      expect(results.direction).toEqual "west"

    xit "moving west and north", ->
      results = new RobotSimulator 0, 0, "north"
      results.move "LAAARALA"
      expect(results.x).toEqual -4
      expect(results.y).toEqual 1
      expect(results.direction).toEqual "west"

    xit "moving west and south", ->
      results = new RobotSimulator 2, -7, "east"
      results.move "RRAAAAALA"
      expect(results.x).toEqual -3
      expect(results.y).toEqual -8
      expect(results.direction).toEqual "south"

    xit "moving east and north", ->
      results = new RobotSimulator 8, 4, "south"
      results.move "LAAARRRALLLL"
      expect(results.x).toEqual 11
      expect(results.y).toEqual 5
      expect(results.direction).toEqual "north"
