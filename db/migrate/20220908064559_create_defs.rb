class CreateDefs < ActiveRecord::Migration[6.1]
  def change
    create_table :defs do |t|
      t.string :create

      t.timestamps
    end
  end
end
