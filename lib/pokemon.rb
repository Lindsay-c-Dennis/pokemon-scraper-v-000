class Pokemon
  
  @@all = []
  
  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
    @@all < self
  end
  
  def self.save(name, type, db) 
    db.execute
end
