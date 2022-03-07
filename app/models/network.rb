require 'pry'

class Network < ActiveRecord::Base
  has_many :shows

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end

  def shows
    # binding.pry
    Show.find_by(network_id: self.id)
  end
  
end
