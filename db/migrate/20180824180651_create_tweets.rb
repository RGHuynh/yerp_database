class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :user
      t.text :post
      t.integer :likes
      t.integer :dislikes
      t.timestamps
    end
  end
end
