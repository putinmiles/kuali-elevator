class ElevatorController
  def initialize(number_of_floors, number_of_elevators)
    @number_of_floors = number_of_floors
    @number_of_elevators = number_of_elevators
    @elevators = @number_of_elevators.times.collect do |id|
      Elevator.new(@number_of_floors, id)
    end
  end

  # Requests are recieved from a RequestGenerator to simulate independent passengers
  # making requests at different floors. Requests could possibly be structued as such:
  # {target_floor: 10, desired_floor: 5}
  def process_incoming_request(request)
    elevators_closest_to_target(request.desired_floor).add_floor(request.target_floor)
  end

  def elevators_closest_to_target(target)
    @elevators.sort do |a, b|
      a.distance_to_target_floor(request.target) <=> b.distance_to_target_floor(request.target)
    end
  end
end
