class UsersController < ApplicationController
    def new
        render "new"
    end

    def create
        @user = User.new[params[:user]]
        if @user.save
            reder "OK";
        else
            render "new"
        end
    end
end
