class CreateSkools < ActiveRecord::Migration
  def change
    create_table :skools do |t|
      t.string :name
      t.string :teachers

      t.timestamps null: false
    end
  end
end
