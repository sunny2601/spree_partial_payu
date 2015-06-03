Spree::Core::Engine.routes.draw do
  post '/payupaisa', :to => "payupaisa#express", :as => :payupaisa_express
  post '/payupaisa/confirm', :to => "payupaisa#confirm", :as => :confirm_payupaisa
  get '/payupaisa/cancel', :to => "payupaisa#cancel", :as => :cancel_payupaisa
  post '/payupaisa/cancel', :to => "payupaisa#cancel", :as => :cancel_payupaisa2
  post '/payupaisa/error', :to => "payupaisa#error", :as => :error_payupaisa
  get '/payupaisa/notify', :to => "payupaisa#notify", :as => :notify_payupaisa

  namespace :admin do
    # Using :only here so it doesn't redraw those routes
    resources :orders, :only => [] do
      resources :payments, :only => [] do
        member do
          get 'payupaisa_refund'
          post 'payupaisa_refund'
        end
      end
    end
  end
end
