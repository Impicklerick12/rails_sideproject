class CreatePolaroids < ActiveRecord::Migration[6.0]
  def change
    create_table :polaroids do |t|
      t.string :title
      t.string :comment
      t.date :date
    end
  end
end
