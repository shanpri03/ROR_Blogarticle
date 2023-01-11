class CreateBlgarticle < ActiveRecord::Migration[7.0]
  def change
    create_table :blgarticles do |t|
      t.string :atitle
      t.timestamps
    end
  end
end
