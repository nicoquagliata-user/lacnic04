# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '6bcec580fe31664d9ead3b4e4e3db363'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  
  include AuthenticatedSystem
  
  before_filter :get_pages_for_tabs
  before_filter :get_pages_for_toptabs
  
  
  
  def get_pages_for_tabs
      @tabs = Page.find_main_public
  end
  
  def get_pages_for_toptabs
    if logged_in?
      @toptabs = Page.find_main
    else
      @toptabs = ''
    end
  end
  
 
  
  
end
