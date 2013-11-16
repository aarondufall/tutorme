class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :level
      t.belongs_to :profile, index: true

      t.timestamps
    end
  end
end
