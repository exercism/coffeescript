directions =
  "north":
    "left": "west"
    "right": "east"
  "east":
    "left": "north"
    "right": "south"
  "south":
    "left": "east"
    "right": "west"
  "west":
    "left": "south"
    "right": "north"

class RobotSimulator
  constructor: (@x, @y, @direction) ->

  move: (commands) =>
    for command in commands.split("")
      if command == "L"
        @direction = directions[@direction]["left"]
      else if command == "R"
        @direction = directions[@direction]["right"]
      else if command == "A"
        if @direction == "north"
          @y += 1
        else if @direction == "south"
          @y -= 1
        else if @direction == "east"
          @x += 1
        else if @direction == "west"
          @x -= 1

module.exports = RobotSimulator
