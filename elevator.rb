class Elevator
  attr_accessor :id, :current_floor

  def initialize(number_of_floors, id)
    @max_floors = number_of_floors
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

  def move
    until @target_floors.empty?
      if @target_floors.first == @current_floor
        @target_floors.shift
        open_doors
        close_doors
      else
        if @target_floors.first > @current_floor
          if @current_floor == @max_floors
            open_doors
          else
            @current_floor += 1
          end
        else
          if @current_floor == 1
            open_doors
          else
            @current_floor -= 1
          end
        end
        display_current_floor
      end
    end
  end

  def open_doors
    puts "Elevator #{id} Opening Doors @ floor #{@current_floor}"
    @doors_open = true
  end

  def close_doors
    puts "Elevator #{id} Closing Doors"
    @doors_open = false
  end

  def in_transit?
    # TODO: more thought needs to be put into determining when an
    # elevator is actually in transit
    !@doors_open && !@target_floors.empty? ? true : false
  end

  def distance_to_target_floor(target)
    (target - @current_floor).abs
  end
end
