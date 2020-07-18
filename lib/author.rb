class Author 
  attr_accessor :name

    @@all = []
  def initialize(name)
    @name = name
    @@all << self 
  end

  def post
    Post.all.select{
      |post| post.author == self 
    }
  end 

  def add_post(post)
    post.author = self

  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
 
  end

  def self.post _count
    Post.all.count
  end

end 