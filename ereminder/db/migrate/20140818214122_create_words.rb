class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :uid, null:false
      t.integer :wid, :auto_increment,:primary_key
      t.string :wordbody, null:false
      t.string :jpbody, null:false
      t.boolean :remember

      t.timestamps
    end
    add_index:words,[ :uid, :wid],unique: true
  end
end
