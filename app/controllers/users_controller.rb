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
            redirect_to users_path, notice: 'El usuario se ha creado correctamente'
        else
            render :new, status: :unprocessable_entity
        end

        # Mostrar en consola
        # pp @user 
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
            redirect_to users_path, notice: 'El usuario se ha actualizado correctamente'
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path, notice: 'El usuario se ha eliminado correctamente', status: :see_other
    end


    private

    def user_params
        params.require(:user).permit(:nombre, :dni, :type_person, :fecha_emision, :fecha_vencimiento, :email, :telefono_p, :telefono_s )
    end
end