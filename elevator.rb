class Elevator
  attr_accessor :id, :current_floor

  def initialize(number_of_floors, id)
    @floors = number_of_floors
    @current_floor = 1
    @target_floor = 1
    @id = id
    @in_transit = false
  end

  def proceed_to_target_floor
    distance_to_target_floor.times do |floor|
    end
  end

  def move_up
    puts "Elevator #{id} Going up!"
  end

  def move_down
    puts "Elevator #{id} Going down!"
  end

  def open_doors
    puts "Elevator #{id} Opening Doors"
  end

  def close_doors
    puts "Elevator #{id} Closing Doors"
  end

  def distance_to_target_floor(target)
    (target - @current_floor).abs
  end
end
