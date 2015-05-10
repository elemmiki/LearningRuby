class AddCharacterToStat < ActiveRecord::Migration
  def change
    add_reference :stats, :character, index: true, foreign_key: true
  end
end
