class AndPostsTable < ActiveRecord::Migration
  def change
  	# id column created automaticaly by Rails
  	create_table :posts do |t|
  		t.string :title
  		t.string :body

  		# adds the created_at and updated_at columns
  		t.timestamps
  	end
  end
end
