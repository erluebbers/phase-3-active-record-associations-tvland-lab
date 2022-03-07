require 'pry'

class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def network
    Network.find(self.network_id)
  end


end