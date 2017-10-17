Rails.application.routes.draw do
  root 'rpg#index'

  post 'rpg/farm' => 'rpg#farm'

  post 'rpg/cave' => 'rpg#cave'

  post 'rpg/house' => 'rpg#house'

  post 'rpg/casino' => 'rpg#casino'

end