class Elevator
  attr_accessor :id, :current_floor

  def initialize(number_of_floors, id)
    @floors = number_of_floors
    @current_floor = 1
    @id = id
  end

  def move_up
    puts "Going up!"
  end

  def move_down
    puts "Going down!"
  end

  def open_doors
    puts "Opening Doors"
  end

  def close_doors
    puts "Closing Doors"
  end

  def distance_to_target_floor(target)
    
  end
end
