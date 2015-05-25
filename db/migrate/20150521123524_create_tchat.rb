class CreateTchat < ActiveRecord::Migration
  def change
  	create_table :tchats do |t|
	  	t.column :name, 	:string
	  	t.column :message, 	:text
	  	t.timestamps
	end
  end
end
