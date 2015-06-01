class User < ActiveRecord::Base

	User.name = #{params[:name]}
	User.sname = #{params[:sname]}
	User.save

end
