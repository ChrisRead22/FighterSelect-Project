class Player < ActiveRecord::Base
    has_many :fighter_selects
    has_many :fighters, through: :fighter_selects

end
