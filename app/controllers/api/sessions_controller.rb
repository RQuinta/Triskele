class Api::SessionsController < ApplicationController

    def create
        user = User.find_by(email: session_params[:email])
        if user
            professional = Professional.find_by(email: session_params[:email])
            if (session_params[:social_login])
                render json: { professional: professional, user: user }, status: 200
            else
                if (user.authenticate(session_params[:password]))
                    render json: { professional: professional, user: user }, status: 200
                else
                    render json: { error: 'Incorrect credentials' }, status: 401
                end    
            end
        else
            render json: { error: 'User does not exist' }, status: 404      
        end
    end

    def session_params
        params.require(:session).permit([:email, :password, :social_login])
    end

end