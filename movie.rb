class Theater
  attr_reader :number_seats, :number_patrons
  def initialize(number_seats)
    @number_seats = number_seats
    @number_patrons = 0
  end

  def admit!(number_patrons=1)
    return "It exceeds the maximum capacity!" if at_capacity?(number_patrons)
    @number_patrons += number_patrons
  end

  def at_capacity?(number_patrons=0)
    @number_seats < @number_patrons + number_patrons
  end

  def record_walk_outs!(number_patrons=1)
    @number_patrons -= number_patrons
  end
end
