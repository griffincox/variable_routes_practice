Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:the_number", { :controller => "calculations", :action => "square_root"})
  get("/random/:num1/:num2", { :controller => "calculations", :action => "random"})
  get("/payment/:apr/:years/:principal", { :controller => "calculations", :action => "payment"})
end
