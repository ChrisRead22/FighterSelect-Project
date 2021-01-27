class Player < ActiveRecord::Base
    has_many :fighter_selects
    has_many :fighters, through: :fighter_selects

end

def selected_fighters
    fighter_history = self.fighters.where(history: true)
    fighter_history.map{|select|select.fighter}.uniq
end
