class BlogarticleAddcolmns < ActiveRecord::Migration[7.0]
  def change
    add_column :blgarticles, :acontent, :string
    add_column :blgarticles, :aimg, :string
  end
end
