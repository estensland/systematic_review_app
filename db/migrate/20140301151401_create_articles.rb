class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t| 
      t.string :title
      t.string :author
      t.integer :evidence_level
      t.string :study_design
      t.string :sub_section
      t.timestamps
    end
  end
end
