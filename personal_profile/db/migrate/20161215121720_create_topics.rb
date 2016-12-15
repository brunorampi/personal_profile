class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :title
      t.string :date
      t.text :description
      t.text :image
      t.text :source
      t.text :author
      t.text :notes

      t.timestamps
    end
  end
end
