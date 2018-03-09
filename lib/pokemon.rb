class Pokemon
  
  attr_accessor :name, :type, :id
  
  @@all = []
  
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
    @@all << self
  end
  
  def self.save(name, type, db) 
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end
  
  def self.all 
    @@all 
  end
  
  def self.find(db, id)
    @@all.detect {|pokemon| pokemon.id == id} 
  end
end
