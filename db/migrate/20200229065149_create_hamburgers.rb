class CreateHamburgers < ActiveRecord::Migration[5.2]
  def change
    create_table :hamburgers do |t|

      t.timestamps
    end
  end
end
