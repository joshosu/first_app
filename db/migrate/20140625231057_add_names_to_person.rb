class AddNamesToPerson < ActiveRecord::Migration
  def change
  	create_table :people do |t|
  		t.string :first_name
  		t.string :last_name
  	end
  end
end	
