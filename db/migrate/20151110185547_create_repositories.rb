class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.hstore :data

      t.timestamps
    end
  end
end
