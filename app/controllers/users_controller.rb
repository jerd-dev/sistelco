class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to users_path
        else
            render :new, status: :unprocessable_entity
        end

        # Mostrar en consola
        # pp @user 
    end

    private

    def user_params
        params.require(:user).permit(:nombre, :dni, :type_person, :fecha_emision, :fecha_vencimiento, :email, :telefono_p, :telefono_s )
    end
end