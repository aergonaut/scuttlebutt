Rails.application.routes.draw do

  mount Scuttlebutt::Engine => "/scuttlebutt"
end
