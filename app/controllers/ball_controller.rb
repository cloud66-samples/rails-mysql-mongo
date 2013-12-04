class BallController < ApplicationController
	def index
		@mysql_start = Time.now

		100.times do |selena|
			WreckingBall.create
		end

		@mysql_finish = Time.now

		@mongo_start = Time.now

		100.times do
			WreckingBallMongo.create
		end

		@mongod_finish = Time.now

		mongo_count = 10
		mongo_output_start = Time.now

		WreckingBallMongo.all.each_with_index do |miley, index|
			@mongo_output = "#{index} ---- #{Time.now - mongo_output_start} seconds" if index % mongo_count == 0
		end

		mysql_count = 10
		mysql_start = Time.now

		WreckingBall.all.each_with_index do |selena, index|
			@mysql_output = "#{index} ---- #{Time.now - mysql_start}" if index % mysql_count == 0
		end
	end
end
