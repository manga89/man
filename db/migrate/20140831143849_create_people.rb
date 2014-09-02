class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string "first_name", :limit=>25
      t.string "last_name",  :limit =>30
      t.string  "sex"
      t.boolean :visible , :default =>true
      t.integer "age"
      t.string "state"
      t.string  "address"
      t.string  "hobbies"
      t.string "profession"


      t.timestamps
    end
  end
end
