#Insert Mongo
task create_mileys: :environment do
  start = Time.now

  100000.times do
    WreckingBallMongo.create
  end

  finish = Time.now

  p (finish - start).to_s + " Segundos insertando Mileys"
end

#Insert mySql
task create_selenas: :environment do
  start = Time.now

  100000.times do |selena|
    WreckingBall.create
  end

  finish = Time.now

  p (finish - start).to_s + " Segundos insertando Selenas"
end

#Select Mongo
task find_mileys: :environment do
  start = Time.now

  WreckingBallMongo.all.each do |miley|
    p miley.inspect
  end

  finish = Time.now

  p (finish - start).to_s + " Segundos listando Mileys"
end

#Select mySql
task find_selenas: :environment do
  start = Time.now

  WreckingBall.all.each do |selena|
    p selena.inspect
  end

  finish = Time.now

  p (finish - start).to_s + " Segundos listando Selenas"
end

