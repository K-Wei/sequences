Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/", :controller => "session", :action => "new")

  get("/all_guesses", :controller => "session", :action => "try")

  get("/show_answer/", :controller => "session", :action => "show")

end
