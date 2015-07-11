class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.string :name
      t.integer :article_id

      t.timestamps
    end
  end
end
