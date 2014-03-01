class Article < ActiveRecord::Base
  has_many :notes

  def short_title
    self.title[0..70] +"..."
  end 
  
end
