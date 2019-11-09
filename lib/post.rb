class Post 
  attr_accessor :author, :title, :name
  
  @@all = []
  
  def initialize(title)
    @title = title
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
   if !self.author
      nil
    else
      self.author.name
    end
  end
  
end