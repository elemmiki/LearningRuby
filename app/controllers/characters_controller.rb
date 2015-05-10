class CharactersController < ApplicationController
	def index
		@characters = Character.all
	end

	def new
		@character = Character.new
	end

	def show
		@character = Character.find(params(:id))
	end	

	def create
		@character = Character.new(params[:character])
		if @character.save
			redirect_to characters_path, :notice => "The character has been created!"
		else
			render "new"
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end


end
