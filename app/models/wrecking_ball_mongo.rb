class WreckingBallMongo
  include MongoMapper::Document

  before_create :default_values

  key :_id, String
  key :name, String
  key :columna0, Integer
  key :columna1, Integer
  key :columna2, Integer
  key :columna3, Integer
  key :columna4, Integer
  key :columna5, Integer
  key :columna6, Integer
  key :columna7, Integer
  key :columna8, Integer
  key :columna9, Integer
  key :columna10, Integer
  key :columna11, Integer
  key :columna12, Integer
  key :columna13, Integer
  key :columna14, Integer
  key :columna15, Integer
  key :columna16, Integer
  key :columna17, Integer
  key :columna18, Integer
  key :columna19, Integer
  key :columna20, Integer
  key :columna21, Integer
  key :columna22, Integer
  key :columna23, Integer
  key :columna24, Integer
  key :columna25, Integer
  key :columna26, Integer
  key :columna27, Integer
  key :columna28, Integer
  key :columna29, Integer
  key :columna30, Integer
  key :columna31, Integer
  key :columna32, Integer
  key :columna33, Integer
  key :columna34, Integer
  key :columna35, Integer
  key :columna36, Integer
  key :columna37, Integer
  key :columna38, Integer
  key :columna39, Integer
  key :columna40, Integer
  key :columna41, Integer
  key :columna42, Integer
  key :columna43, Integer
  key :columna44, Integer
  key :columna45, Integer
  key :columna46, Integer
  key :columna47, Integer
  key :columna48, Integer
  key :columna49, Integer

  def default_values
    self.name = "Miley Cyrus"

    50.times {
      |i| eval("self.columna#{i} = #{rand(1..500)}")
    }
  end
end