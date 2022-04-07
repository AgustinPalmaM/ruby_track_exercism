class AssemblyLine
  def initialize(speed)
    @speed = speed.to_f
    @produced_cars_each_hour = 221
  end

  def production_rate_per_hour
    case @speed
    when 1..4
      @speed * @produced_cars_each_hour
    when 5..8
      @speed * @produced_cars_each_hour * 90 / 100
    when 9
      @speed * @produced_cars_each_hour * 80 / 100
    when 10
      @speed * @produced_cars_each_hour * 77 / 100
    end
  end

  def working_items_per_minute
    production_rate_per_hour.floor / 60
  end
end

