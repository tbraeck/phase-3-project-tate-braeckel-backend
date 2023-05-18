class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  get '/subjects' do 
    subject = Subject.all.to_json(include: :resources)
      end
    
      get '/subjects/:id' do
    subject = Subject.find(id: params[:id])
    
    end     

      post "/resources/:id" do 
   user_new_drawing = User.find_by(id: params[:id])
   if user_new_drawing.to_json(include: :drawings)
   else
    "404 - User not found"
  end
end
    
      delete "/resources/:id" do 
        deleteResource = Resource.find(params[:id])
        deleteResource.destroy
        deleteResource.to_json
      end
    
    #   patch '/users/:id' do 
    #     user = User.find(params[:id])
    #     user.update(
    #       name: params[:name]
    #       drawings: params[:drawings]
    # )
    # user.to_json
    #   end 

      get "/resources" do

        resource = Resource.all
        resource.to_json
    
      end
    
    #   get "/drawings/:id" do
    
    #     drawing = Drawing.find(params[:id])
    #     drawing.to_json
    
    #   end

end
