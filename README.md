# rails-module-flash
> Rails module for basic flash.

## Step by step:
+ new basic pages:
```bash
rails new .
rails g controller pages welcome page1 page2 page3 page4
```

+ add routes:
```ruby
Rails.application.routes.draw do
  # get 'pages/welcome'

  get 'pages/page1'
  get 'pages/page2'
  get 'pages/page3'
  get 'pages/page4'
  root :to => 'pages#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
```

+ add detect html to application.html.erb:
```ruby
<% if flash[:notice] %>
    <div class="my-notice"><%= flash[:notice] %></div>
<% end %>


<% if flash[:info] %>
    <div class="my-info"><%= flash[:info] %></div>
<% end %>


<% if flash[:alert] %>
    <div class="my-alert"><%= flash[:alert] %></div>
<% end %>
```

+ Add code to pages controller:
```ruby
  def page1
    flash.now[:notice] = "page1 Post successfully created"
  end

  def page2
    flash.now[:notice] = "page2 Post successfully created"
  end

  def page3
    flash.now[:info] = "page3 INFO successfully created"
  end

  def page4
    flash.now[:alert] = "page4 ALERT successfully created"
  end
```