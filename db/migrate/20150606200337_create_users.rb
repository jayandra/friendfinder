class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :sex
      t.string :school
      t.string :highschool
      t.string :city
      t.string :photo
      t.integer :views
      t.integer :likes

      t.timestamps null: false
    end
  end
end
