class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|

    	t.text :name
    	t.integer :age
    	t.text :mail
    	t.text :qualification
    	t.timestamp
    end
  end
end
