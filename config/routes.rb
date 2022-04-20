Rails.application.routes.draw do
  self.get("/rock", { :controller => "application", :action => "play_rock"})
  self.get("/paper", { :controller => "application", :action => "play_paper"})
  self.get("/scissors", { :controller => "application", :action => "play_scissors"})

  self.get("/", { :controller => "application", :action => "homepage"})

end
