class CreateNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :notices do |t|
      t.text :title
      t.text :description
      t.string :date

      t.timestamps
    end
  end
end
