class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :title
      t.string :description
      t.string :email
      t.string :city
      t.string :address
      t.integer :category_id

      t.timestamps
    end
  end
end
