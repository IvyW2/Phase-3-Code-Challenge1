class Magazine
  # attr_accessor :name, :category

  @@all = []
  def initialize(name:, category:)
    @name = name
    @category = category
    @@all << self
  end

  def name
    @name
  end

  def category
    @category
  end

  def self.all
    @@all
  end

  def contributors
    mag_con = []
    Article.all.select do |article|
      if article.magazine.name == @name
        mag_con << article.author
      end
    end
    mag_con.uniq
  end

  def self.find_by_name(name)
    Article.all.find do |article|
      article.magazine.name == name
    end
  end

  def article_titles
    titles = []
    Article.all.select do |article|
      if article.magazine == self
        titles << article.title
      end
    end
    titles
  end

  def contributing_authors
    Article.all.select do |article|
      article.magazine == self
    end.map do |article|
      article.author.name
    end.tally.select do |key, value|
      value > 2
    end.keys
  end


end