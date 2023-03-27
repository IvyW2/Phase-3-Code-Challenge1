require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

auth1 = Author.new(name: "Tom")
auth2 = Author.new(name: "Harry")


magazine1 = Magazine.new(name: "Standard", category: "Business")
magazine2 = Magazine.new(name: "Vogue", category: "Fashion")

articleA = Article.new(author:auth1, magazine: magazine1, title: "Crypto")
articleB = Article.new(author: auth2, magazine: magazine2, title: "Style")



### DO NOT REMOVE THIS
binding.pry

0
