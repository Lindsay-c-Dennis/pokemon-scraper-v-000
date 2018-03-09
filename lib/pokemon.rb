class Pokemon
  
  attr_accessor :name, :type, :id, :db, :hp
  
  @@all = []
  
  def initialize(id:, name:, type:, hp: nil, db:)
    @id = id
    @name = name
    @type = type
    @nil = hp
    @db = db
    @@all << self
  end
  
  def self.save(name, type, db) 
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end
  
  def self.all 
    @@all 
  end
  
  def self.find(id, db)
    pokemon_info = db.execute("SELECT * FROM pokemon WHERE id == ?", id).flatten
    Pokemon.new(id: pokemon_info[0], name: pokemon_info[1], type: pokemon_info[2], db: db)
  end
  
  def alter_hp(new_hp, db)
    "UPDATE db "
  end
end
