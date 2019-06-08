class CreateDci < ActiveRecord::Migration[5.2]
  def change
    create_table :dcis do |t|
    	t.references :user
    	t.string :code, null: false
    end
  end
end
