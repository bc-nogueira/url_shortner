class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :url
      t.string :tiny_url
      t.integer :clicks, default: 0

      t.timestamps
    end
  end
end
