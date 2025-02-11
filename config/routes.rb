Rails.application.routes.draw do
  get("/", { :controller => "pages", :action => "square_new" })
  get("/square/new", { :controller => "pages", :action => "square_new" })
  get("/square/result", { :controller => "pages", :action => "square_result" })
  get("/square_root/new", { :controller => "pages", :action => "square_root_new" })
  get("/square_root/result", { :controller => "pages", :action => "square_root_result" })
  get("/random/new", { :controller => "pages", :action => "random_new" })
  get("/random/result", { :controller => "pages", :action => "random_result" })
  get("/payment/new", { :controller => "pages", :action => "payment_new" })
  get("/payment/result", { :controller => "pages", :action => "payment_result" })
end
