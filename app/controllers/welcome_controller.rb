class WelcomeController < ApplicationController
	def index
		@trending_users = User.order(likes: :desc).limit(9)
	end
end