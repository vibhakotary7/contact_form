class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
      t.text :message

      t.timestamps
    end
  end
end
