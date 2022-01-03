class CreateColors < ActiveRecord::Migration[6.1]
  def change
    create_table :colors do |t|
      t.string :name
      t.string :hex
      t.string :genre

      t.timestamps
    end
  end
end
