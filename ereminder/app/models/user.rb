class User < ActiveRecord::Base
  def change
    create_table :users do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :nickname, null:false
      t.string :image_url, null:false
      t.string :password, null:false
      t.timestamps
    end
    add_index :users, [:provider, :uid], unique: true
  end
end
