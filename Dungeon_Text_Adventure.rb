# frozen_string_literal: true

# top-level documentation
class Dungeon
  attr_accessor :player

  def initialize(player)
    @player = player
    @rooms = {}
  end

  def add_room(reference, name, description, connections)
    @rooms[reference] = Room.new(reference, name, description, connections)
  end
end

Player = Struct.new(:name, :location)
Room = Struct.new(:reference, :name, :description, :connections)

me = Player.new("Fred Bloggs")
my_dungeon = Dungeon.new(me)
my_dungeon.add_room(:largecave, 'Large Cave', 'a large cavernous cave', { west: :smallcave })
my_dungeon.add_room(:smallcave, 'Small Cave', 'a small, claustrophobic cave', { east: :largecave })
