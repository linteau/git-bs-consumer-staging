class CreateProductfeeds < ActiveRecord::Migration
  def change
    create_table :productfeeds do |t|
      t.integer :id
      t.string :link
      t.text :summary
      t.string :title
      t.datetime :updated

      t.timestamps
    end
  end
end
