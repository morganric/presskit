module ReleasesHelper

	def set_user_release
		ur = UserRelease.new(:user_id => current_user.id, :release_id => @release.id)
		ur.save
	end

	def add_views
		@release.views = @release.views + 1
		@release.save
	end

end
