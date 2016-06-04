class Api::SessionsController < ApplicationController

    def create
        binding.pry
        user = User.find_by(email: session_params[:email])
        if user
            if (session_params[:social_login])
                respond_to do |format|
                    format.json do
                        render :json => user.to_json(:include => [:professional] )
                    end
                end
            else
                if (user.authenticate(session_params[:password]))
                    respond_to do |format|
                        format.json do
                            render :json => user.to_json(:include => [:professional] )
                        end
                    end
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

