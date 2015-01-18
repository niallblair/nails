class CreateNominals < ActiveRecord::Migration
  def change
    create_table :nominals do |t|
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
