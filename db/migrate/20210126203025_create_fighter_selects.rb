class CreateFighterSelects < ActiveRecord::Migration[5.2]
  def change
    create_table :fighter_selects do |t|
      t.integer :player_id
      t.integer :fighter_id

      t.timestamps
    end
  end
end
