Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square/:the_number", { :controller => "calculations", :action => "square"})
end
