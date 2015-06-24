class CreatePotws < ActiveRecord::Migration
  def change
    create_table(:potws) do |t|
      t.column :purl, :string
    end
  end
end
