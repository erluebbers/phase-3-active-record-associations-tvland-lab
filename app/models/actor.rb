require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def shows
    Show.find_each(self.id)
  end

  def full_name
    # binding.pry
    self.first_name + " " + self.last_name
  end

end