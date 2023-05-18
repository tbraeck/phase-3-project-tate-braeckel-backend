class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  get '/subjects' do 
    subject = Subject.all.to_json(include: :resources)
      end
    
      get '/subjects/:id' do
    subject = Subject.find(params[:id])
    subject.to_json
    end     

      post "/resources/:id" do 
   new_resource = Resource.find_by(params[:id])
   if new_resource.to_json(include: :subjects)
   else
    "404 - User not found"
  end
end
    
      delete "/resources/:id" do 
        delete_resource = Resource.find(params[:id])
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
    
      get "/resources/:id" do
    
        resource = Resource.find(params[:id])
        resource.to_json
    
      end

end
