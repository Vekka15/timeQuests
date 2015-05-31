class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :name
      t.string :category
      t.decimal :priority
      t.date :finish_date
      t.string :procent_done
      t.string :decimal

      t.timestamps null: false
    end
  end
end
