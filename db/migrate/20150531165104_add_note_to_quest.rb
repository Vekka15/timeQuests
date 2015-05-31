class AddNoteToQuest < ActiveRecord::Migration
  def change
    add_column :quests, :note, :text
  end
end
