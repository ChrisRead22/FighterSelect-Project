class Fighter < ActiveRecord::Base
  has_many :fighter_selects 
  has_many :players, through: :fighter_selects

  # def self.all_names
  #   self.all.map{|fighter| {fighter.name => fighter.id}}
  # end

  
end
