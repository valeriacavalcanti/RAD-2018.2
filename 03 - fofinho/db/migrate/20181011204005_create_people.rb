class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :nome
      t.integer :idade

      t.timestamps
    end
  end
end
