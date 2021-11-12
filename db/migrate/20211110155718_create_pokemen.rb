class CreatePokemen < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemen do |t|
      t.text :name
      t.text :subtype
      t.text :deliciousness

      t.timestamps
    end
  end
end
