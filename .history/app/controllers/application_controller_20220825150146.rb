class ApplicationController < Sinatra::Base

  # add routes
  set default_content_type: "application/json"

  get '/bakeries' do
    # get all the bakeries from the database
    bakeries = Bakery.all
    # send them back as a JSON array
    bakeries.to_json
  end
  
  get '/bakeries' do
  # get id the bakeries from the database
  bakery = Bakery.find(params[:id])
  # send them back as a JSON array
  bakeries.to_json(include: :baked)
end

end
