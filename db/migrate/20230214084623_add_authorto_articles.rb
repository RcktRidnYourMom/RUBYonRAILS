class AddAuthortoArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :author, :string
  end
end
