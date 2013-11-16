class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :school
      t.string :degree
      t.string :specialization
      t.belongs_to :profile, index: true

      t.timestamps
    end
  end
end
