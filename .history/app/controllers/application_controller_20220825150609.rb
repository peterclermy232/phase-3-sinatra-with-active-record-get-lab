class ApplicationController < Sinatra::Base

  # add routes
  set default_content_type: "application/json"

  get '/bakeries' do
    # get all the bakeries from the database
    bakeries = Bakery.all
    # send them back as a JSON array
    bakeries.to_json
  end
  
  get '/bakeries/:id' do
  # get id the bakery from the database
  bakery = Bakery.find(params[:id])
  # send them back as a JSON array
  bakeries.to_json(include: :baked_goods)
end
 
get '/baked_goods/by_price' do
  # get bakedGood class for the method
end
end
