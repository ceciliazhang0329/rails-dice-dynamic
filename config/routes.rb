Rails.application.routes.draw do
  get("/", controller: "cecilia", action: "homepage")
  get("/dice/:number_rolls/:number_sides", controller: "cecilia", action: "dynamic_roll")
end
