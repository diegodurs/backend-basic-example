class Item
  @@db = []

  def self.save(item)
    @@db << item
  end

  def self.all
    @@db
  end
  
  attr_reader :text, :created_at
  def initialize(text)
    @text = text
    @created_at = Time.now
  end  
end