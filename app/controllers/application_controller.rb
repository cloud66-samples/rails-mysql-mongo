class ApplicationController < ActionController::Base
  protect_from_forgery
  %x[rake create_mileys]
end
