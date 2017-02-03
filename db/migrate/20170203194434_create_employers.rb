class CreateEmployers < ActiveRecord::Migration[5.0]
  def change
    create_table :employers do |t|
      t.belongs_to :user, null: false
      t.belongs_to :company, null: false
    end
  end
end
