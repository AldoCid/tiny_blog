class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :description
      t.integer :n_likes,default: 0
      t.references :user

      t.timestamps
    end
  end
end
