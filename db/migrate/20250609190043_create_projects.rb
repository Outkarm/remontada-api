class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :summary_text
      t.string :badge_list, array: true, default: []
      t.string :image_url
      t.string :live_link
      t.string :source_link
      t.text :detailed_text

      t.timestamps
    end
  end
end
