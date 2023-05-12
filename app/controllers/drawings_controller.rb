class DrawingsController < ApplicationController

    get "/drawings" do

        drawing = Drawing.all
        drawing.to_json
    
      end
    
      get "/drawings/:id" do
    
        drawing = Drawing.find(params[:id])
        drawing.to_json
    
      end
    
      

end