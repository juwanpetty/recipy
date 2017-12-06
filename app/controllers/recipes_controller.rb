class RecipesController < ApplicationController
    before_action :find_recipe, only: [:show, :edit, :update, :destroy]

    def index
    end

    def show
    end

    def new
        @recipe = Recipe.new
    end

    def edit
    end

    def create
        @recipe = Recipe.new recipe_params

        if @recipe.save
            redirect_to @recipe
        else
            render 'new'    
        end
    end

    def update
        if @recipe.update post_params
            redirect_to @recipe
        else
            render 'edit'
        end
    end

    def destroy
        @recipe.destroy
        redirect_to recipes_path
    end

    private

    def recipe_params
        params.require(:recipe).permit(:title, :description)
    end

    def find_recipe
        @recipe = Recipe.find(params[:id])
    end
end
