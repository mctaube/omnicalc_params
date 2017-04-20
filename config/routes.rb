Rails.application.routes.draw do
  get("/flexible/square/:num", { :controller => "calculations", :action => "flex_square_5"})
  get("/square/new", { :controller => "calculations", :action => "square_form"})
  get("/square/results", { :controller => "calculations", :action => "square"})

# square root calculations
  get("/flexible/square_root/:num", { :controller => "calculations", :action => "flex_square_root"})


end
