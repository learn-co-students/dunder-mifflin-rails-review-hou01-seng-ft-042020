class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def sort
        @sorted = Dog.all.sort_by {|dog| dog.employees.count}
    end

    def show
        @dog = Dog.find(params[:id])
    end
end
