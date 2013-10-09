class WreckingBall < ActiveRecord::Base
  before_create :default_values

  def default_values
    self.name = "Selena Gomez"

    50.times {
        |i| eval("self.columna#{i} = #{rand(1..500)}")
    }
  end
end
