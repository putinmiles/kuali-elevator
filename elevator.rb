class Elevator
  attr_accessor :id, :current_floor

  def initialize(number_of_floors, id)
    @floors = number_of_floors
    @current_floor = 1
    @target_floors = []
    @id = id
    @doors_open = false
    # NOTE: What should constitute a trip?
    @trips = 0
  end

  def add_floor(floor)
    @target_floors << floor
  end

  def display_current_floor
    "Elevator #{@id} at #{current_floor}"
  end

  def move_up
    @current_floor += 1
    display_current_floor
  end

  def move_down
    @current_floor -= 1
    display_current_floor
  end

  def open_doors
    puts "Elevator #{id} Opening Doors"
    @doors_open = true
  end

  def close_doors
    puts "Elevator #{id} Closing Doors"
    @doors_open = false
  end

  def in_transit?
    !@doors_open && !@target_floors.empty? ? true : false
  end

  def distance_to_target_floor(target)
    (target - @current_floor).abs
  end
end
