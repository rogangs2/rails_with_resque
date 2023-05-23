class CreateSamples < ActiveRecord::Migration[7.0]
  def change
    create_table :samples do |t|
      t.string :name
      t.string :email
      t.integer :number

      t.timestamps
    end
  end
end
