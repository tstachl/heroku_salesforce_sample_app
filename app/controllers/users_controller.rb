class UsersController < ApplicationController
	include Databasedotcom::Rails::Controller

	def index
		@users = User.query("Id != NULL ORDER BY Id LIMIT 20")
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update_attributes(params[:user])
		render "show"
	end

end