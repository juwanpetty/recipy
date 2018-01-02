class PagesController < ApplicationController
    def welcome
        @recipe = Recipe.all.limit(8).order("created_at DESC")
    end
end
