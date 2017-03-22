class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text     :text
      t.boolean  :state

      t.timestamps
    end
  end
end