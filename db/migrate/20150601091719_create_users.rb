class CreateUsers < ActiveRecord::Migration
  def change
	create_table :users do |t|
     t.string #{params[:name]}
     t.string #{params[:sname]}
	 t.timestamps
	end
  end

  def select
  	@user = User.find(params[:id])
  end

  def drop
  	drop_table :users
  end

end
