#Insert Mongo
task create_mileys: :environment do
  start = Time.now

  100.times do
    WreckingBallMongo.create
  end

  finish = Time.now

  p (finish - start).to_s + " Segundos insertando Mileys"
end

#Insert mySql
task create_selenas: :environment do
  start = Time.now

  100.times do |selena|
    WreckingBall.create
  end

  finish = Time.now

  p (finish - start).to_s + " Segundos insertando Selenas"
end

#Select Mongo
task find_mileys: :environment do
  count = 1000
  start = Time.now

  WreckingBallMongo.all.each_with_index do |miley, index|
    p "#{index} ---- #{Time.now - start}" if index % count == 0
  end

  p (Time.now - start).to_s + " Segundos listando Mileys"
end

#Select mySql
task find_selenas: :environment do
  count = 1000
  start = Time.now

  WreckingBall.all.each_with_index do |selena, index|
    p "#{index} ---- #{Time.now - start}" if index % count == 0
  end

  p (Time.now - start).to_s + " Segundos listando Selenas"
end

