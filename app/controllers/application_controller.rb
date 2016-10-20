class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from Exception, :with => :handle_exception

  def handle_exception(exception)
    render :json => {"error" => exception.message}
  end


  def hello
    render html: "Hello, World!"
  end

end
