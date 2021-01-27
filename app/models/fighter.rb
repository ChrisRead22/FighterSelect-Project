class Fighter < ActiveRecord::Base
  has_many :fighter_selects 
  has_many :players, through: :fighter_selects
  
end
