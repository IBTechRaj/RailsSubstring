class CreateInputs < ActiveRecord::Migration[6.1]
  def change
    create_table :inputs do |t|
      t.text :input1
      t.text :input2
      t.text :result_string
      t.integer :result_count

      t.timestamps
    end
  end
end
