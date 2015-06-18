class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :image
      t.string :game

    end
  end
end
