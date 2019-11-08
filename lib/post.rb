class Post 
  
  attr_accessor :title, :author
  

  @@all = []
  
  def initialize(title)
    @title = title
    @posts = []
    @@all << self
  end 
  
  def self.all 
    @@all 
  end
  
  def add_post(post)
       @post << post
        post.author = self
     end


  def author_name
    if @author == nil
    return nil 
    else 
      @author.name 
      end
    end 
end 