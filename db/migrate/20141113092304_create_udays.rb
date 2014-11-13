class CreateUdays < ActiveRecord::Migration
  def change
    create_table :udays do |t|
      t.string :name
      t.integer :rno

      t.timestamps
    end
  end
end
