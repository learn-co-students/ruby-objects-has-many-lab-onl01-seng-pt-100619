class Author
  attr_accessor :name, :posts
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @posts = []
  end
  
  def posts 
    Post.all.select {|post| post.author == self}
  end 
  
  def self.all 
    @@all
  end
  
  end