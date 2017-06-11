# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # class Car / Default car "Chargo"
  class Car
    attr_accessor :color, :year, :model, :current_speed

    def initialize(params)
      @color = params[:color] || 'red'
      @model = params[:model] || 'Chargo'
      @year = params[:year] || 1981
      @current_speed = 0
    end

    def self.default_car
      Car.new
    end

    def speed_up(speed)
      @current_speed += speed
    end

    def push_break(speed)
      if speed <= @current_speed
        @current_speed -= speed
      else
        @current_speed
      end
    end
  end
end
