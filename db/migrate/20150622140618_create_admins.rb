class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|

      t.string :email
    end
  end
end
