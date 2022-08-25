class ApplicationController < Sinatra::Base

  # add routes
  set default_content_type: "application/json"

  get '/bakeries' 

end
