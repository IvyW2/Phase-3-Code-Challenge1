class Author
  attr_reader :name


  def initialize(name:)
    @name = name
  end

  def articles
    Article.all.select { |article| article.author == self }
  end

  def magazines
    auth_mags = []
    Article.all.select do |article| 
      if article.author == self
        auth_mags << article.magazine
      end
    end
    auth_mags.uniq
  end

  def add_article(magazine:, title:)
    Article.new(author: self, magazine: magazine, title: title)
  end

  def topic_areas
    auth_catgry = []
    Article.all.select do |article|
      if article.author == self
        auth_catgry << article.magazine.category
      end
    end
    auth_catgry.uniq
  end


end