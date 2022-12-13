# frozen_string_literal: true

# top-level documentation
class Dungeon
  attr_accessor :player

  def initialize(player)
    @player = player
    @rooms = {}
  end
end

# top-level documentation
class Player
  attr_accessor :name, :location

  def initialize(player_name)
    @name = player_name
  end
end

# top-level documentation
class Room
  attr_accessor :reference, :name, :description, :connections

  def initialize(reference, name, description, connections)
    @reference = reference
    @name = name
    @description = description
    @connections = connections
  end
end

