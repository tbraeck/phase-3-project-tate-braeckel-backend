class UsersController < ApplicationController

    get '/users' do 
        userAll = User.all.to_json(include: :drawings)
          end
        
          get '/users/:id' do
        user = User.find(id: params[:id])
        if user.to_json(include: :drawings)
        else
            "404 - User not found"
          end
        end

          post "/users/:id" do 
       user_new_drawing = User.find_by(id: params[:id])
       if user_new_drawing.to_json(include: :drawings)
       else
        "404 - User not found"
      end
    end
        
          delete "/users/:id" do 
            deleteUser = User.find(params[:id])
            deleteUser.destroy
            deleteUser.to_json
          end
        
          patch '/users/:id' do 
            user = User.find(params[:id])
            user.update(
              name: params[:name]
              drawings: params[:drawings]
        )
        user.to_json
          end 


end