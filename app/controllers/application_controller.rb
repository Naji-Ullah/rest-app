class ApplicationController < ActionController::Base
     # Include CSRF protection for non-API controllers
     protect_from_forgery with: :exception, unless: -> { request.format.json? }
end
