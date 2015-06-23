class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|

      t.string :url
    end
  end
end
