class AddEmailToHome < ActiveRecord::Migration[6.1]
  def change

    add_column :homes, :first_name, :string
    add_column :homes, :last_name, :string
    add_column :homes, :message, :string
    add_column :homes, :email, :string
  end
end
