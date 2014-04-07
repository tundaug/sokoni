class CreatePostTable < ActiveRecord::Migration
  def change
      create_table :posts do|field|
          field.string :title
          field.string :content
      end
  end
end
