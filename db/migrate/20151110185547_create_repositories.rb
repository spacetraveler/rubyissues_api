class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.string :full_name
      t.string :description
      t.string :avatar_url
      t.string :html_url
      t.string :homepage

      t.timestamps
    end
  end
end
