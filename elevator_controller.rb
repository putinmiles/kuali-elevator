class ElevatorController
  def initialize(number_of_floors, number_of_elevators)
    @number_of_floors = number_of_floors
    @number_of_elevators = number_of_elevators
    @elevators = @number_of_elevators.times.collect do |id|
      Elevator.new(@number_of_floors, id)
    end
  end

  def process_incoming_request(floor)
    # determine which elevator is closest
    # send elevator to target floor
  end
end
