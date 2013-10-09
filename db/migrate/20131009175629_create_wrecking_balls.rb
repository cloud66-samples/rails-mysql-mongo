class CreateWreckingBalls < ActiveRecord::Migration
  def change
    create_table :wrecking_balls do |t|
      t.string :name

      50.times {
        |i| t.integer "columna#{i}".parameterize.to_sym
      }

      t.timestamps
    end
  end
end
