class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string   :title
      t.datetime :starts_at
      t.datetime :ends_at
      t.text     :description
      t.string   :location
      t.integer  :price
      t.boolean  :internal, default: :false
      t.boolean  :approved, default: :false

      t.timestamps null: false
    end
  end
end
