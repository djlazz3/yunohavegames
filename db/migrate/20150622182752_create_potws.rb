class CreatePotws < ActiveRecord::Migration
  def change
      add_column :potws, :purl, :string
    end
end
