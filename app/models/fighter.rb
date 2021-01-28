class Fighter < ActiveRecord::Base
  has_many :fighter_selects 
  has_many :players, through: :fighter_selects

  # def fighter.all_names
  #   fighter.all.map{|fighter| {fighter.name => fighter.id}}
  # end

  
end
