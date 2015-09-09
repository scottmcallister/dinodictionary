class SearchesController < ApplicationController

def new
	@search = Search.new
end

def create
	@search = Search.create(search_params)
	redirect_to @search
end

def show
	@search = Search.find(params[:id])
end



private

def search_params
	params.require(:search).permit(:keywords, :name, :era, :diet, :taxonomy, :min_length, :max_length, :min_height, :max_height)
end


end
