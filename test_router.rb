# test_router.rb
match '/latte/:quality' => 'latte_controller@by_quality'
# Find a starbucks width in :rad of the given location
match '/starbucks/:lat/:long/:rad' => 'sb_controller#storefind'


# example matches

match ':controller/:action/:id', :via => :post
match 'posts/ajax/:action', :controller => /posts/
match 'api/search/*rest', 'api#search'
match 'admin/login' , 'devise#new_session'
match 'rack-into', 'pages#show', :default => {:id => 37}
match 'mini-rack/*args', my_rack_application
match 'photos/:id' => 'photos/show',
      :defaults => {:user_id => 37},
      :via => [:get, :post],
      :constraints => {:user_id => /^\d+$/ }

