class CharactersController < ApplicationController
	def index
		@characters = Character.page(params[:page]).per(5).padding(3)
	end

	def new
		@character = Character.new
	end

	def show
		@character = Character.find(params[:id])
	end	

	def create
		@character = Character.new(character_params)
		if @character.save
			redirect_to characters_path, :notice => "The character has been created!"
		else
			render "new"
		end
	end

	def edit
		@character = Character.find(params[:id])
	end

	def update
		@character = Character.find(params[:id])
		if @character.update_attributes(character_params)
			redirect_to characters_path, :notice => "The character has been edited!"
		else
			render "new"
		end
	end

	def destroy
	end

	private
	def character_params
    params.require(:character).permit(:name, :avatar)
  end
end
