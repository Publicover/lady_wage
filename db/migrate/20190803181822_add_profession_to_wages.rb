class AddProfessionToWages < ActiveRecord::Migration[5.2]
  def change
    add_column :wages, :profession, :string
  end
end
