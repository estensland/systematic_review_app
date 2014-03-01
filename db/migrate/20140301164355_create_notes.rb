class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :article_id
      t.string :text
      t.timestamps
    end
  end
end

