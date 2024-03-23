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
      expected = new RobotSimulator 0, 0, "east"
      expect(results).toEqual expected

    xit "changes east to south", ->
      results = new RobotSimulator 0, 0, "east"
      results.move "R"
      expected = new RobotSimulator 0, 0, "south"
      expect(results).toEqual expected

    xit "changes south to west", ->
      results = new RobotSimulator 0, 0, "south"
      results.move "R"
      expected = new RobotSimulator 0, 0, "west"
      expect(results).toEqual expected

    xit "changes west to north", ->
      results = new RobotSimulator 0, 0, "west"
      results.move "R"
      expected = new RobotSimulator 0, 0, "north"
      expect(results).toEqual expected

  describe "Rotating counter-clockwise", ->
    xit "changes north to west", ->
      results = new RobotSimulator 0, 0, "north"
      results.move "L"
      expected = new RobotSimulator 0, 0, "west"
      expect(results).toEqual expected

    xit "changes west to south", ->
      results = new RobotSimulator 0, 0, "west"
      results.move "L"
      expected = new RobotSimulator 0, 0, "south"
      expect(results).toEqual expected

    xit "changes south to east", ->
      results = new RobotSimulator 0, 0, "south"
      results.move "L"
      expected = new RobotSimulator 0, 0, "east"
      expect(results).toEqual expected

    xit "changes east to north", ->
      results = new RobotSimulator 0, 0, "east"
      results.move "L"
      expected = new RobotSimulator 0, 0, "north"
      expect(results).toEqual expected

  describe "Moving forward one", ->
    xit "facing north increments Y", ->
      results = new RobotSimulator 0, 0, "north"
      results.move "A"
      expected = new RobotSimulator 0, 1, "north"
      expect(results).toEqual expected

    xit "facing south decrements Y", ->
      results = new RobotSimulator 0, 0, "south"
      results.move "A"
      expected = new RobotSimulator 0, -1, "south"
      expect(results).toEqual expected

    xit "facing east increments X", ->
      results = new RobotSimulator 0, 0, "east"
      results.move "A"
      expected = new RobotSimulator 1, 0, "east"
      expect(results).toEqual expected

    xit "facing west decrements X", ->
      results = new RobotSimulator 0, 0, "west"
      results.move "A"
      expected = new RobotSimulator -1, 0, "west"
      expect(results).toEqual expected

  describe "Follow series of instructions", ->
    xit "moving east and north from README", ->
      results = new RobotSimulator 7, 3, "north"
      results.move "RAALAL"
      expected = new RobotSimulator 9, 4, "west"
      expect(results).toEqual expected

    xit "moving west and north", ->
      results = new RobotSimulator 0, 0, "north"
      results.move "LAAARALA"
      expected = new RobotSimulator -4, 1, "west"
      expect(results).toEqual expected

    xit "moving west and south", ->
      results = new RobotSimulator 2, -7, "east"
      results.move "RRAAAAALA"
      expected = new RobotSimulator -3, -8, "south"
      expect(results).toEqual expected

    xit "moving east and north", ->
      results = new RobotSimulator 8, 4, "south"
      results.move "LAAARRRALLLL"
      expected = new RobotSimulator 11, 5, "north"
      expect(results).toEqual expected
