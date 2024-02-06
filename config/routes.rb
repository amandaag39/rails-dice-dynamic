Rails.application.routes.draw do
  get("/", { :controller => "dice_roll_app", :action => "home"})

  get("/dice/2/6", { :controller => "dice_roll_app", :action => "two_six"})

  get("/dice/2/10", { :controller => "dice_roll_app", :action => "two_ten"})

  get("/dice/1/20", { :controller => "dice_roll_app", :action => "one_twenty"})

  get("/dice/5/4", { :controller => "dice_roll_app", :action => "five_four"})

  get("/dice/:number_of_rolls/:number_of_sides", { :controller => "dice_roll_app", :action => "dynamic"})
end
