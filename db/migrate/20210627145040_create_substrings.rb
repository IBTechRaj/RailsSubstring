class CreateSubstrings < ActiveRecord::Migration[6.1]
  def change
    create_table :substrings do |t|
      t.text :str1
      t.text :str2
      t.text :result_str
      t.integer :result_digits

      t.timestamps
    end
  end
end
