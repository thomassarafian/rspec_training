class CreateDummies < ActiveRecord::Migration[6.1]
  def change
    create_table :dummies do |t|
      t.string :name
      t.integer :age
      t.string :city

      t.timestamps
    end
  end
end
