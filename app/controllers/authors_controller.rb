class AuthorsController < ApplicationController
 before_action :verify_auth

 def index
  user.authors.all
  app_response(message: 'success', data: author)
 end

private

 def author_params
   params.permit(:name, :image, :location)
 end
end
