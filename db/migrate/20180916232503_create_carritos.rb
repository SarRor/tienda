class CreateCarritos < ActiveRecord::Migration[5.2]
  def change
    create_table :carritos do |t|

      t.timestamps
    end
  end
end
