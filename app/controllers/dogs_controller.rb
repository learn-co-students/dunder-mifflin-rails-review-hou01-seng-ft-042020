class DogsController < ApplicationController

    # before_action :current_dog, only :show


    def index
        @dogs = Dog.all
    end

    def show
        @dog = current_dog
    end


    def current_dog
        @dog = Dog.find(params[:id])
    end

    # def dog_params
    #     params.require(:dog).permit(, actor_ids: [])
    # end

end
