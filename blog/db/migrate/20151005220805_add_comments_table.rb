class AddCommentsTable < ActiveRecord::Migration
  def change
  	# id column created automaticaly by Rails
  	create_table :comments do |t|
  		t.string :title
  		t.references :post

  		# adds the created_at and updated_at columns
  		t.timestamps
  	end
  end
end
