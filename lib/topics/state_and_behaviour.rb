# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # class Car / Default car "Chargo"
  class Car
    attr_accessor :color, :year, :model, :current_speed

    START_SPEED = 0
    DEFAULT_COLOR = 'red'
    DEFAULT_MODEL = 'Chargo'
    DEFAULT_YEAR = 1981

    def initialize(params)
      @color = params[:color] || DEFAULT_COLOR
      @model = params[:model] || DEFAULT_MODEL
      @year = params[:year] || DEFAULT_YEAR
      @current_speed = START_SPEED
    end

    def self.default_car
      Car.new
    end

    def speed_up(more_speed)
      @current_speed += more_speed
    end

    def push_break(less_speed)
      @current_speed -= less_speed if less_speed <= @current_speed
    end
  end
end
