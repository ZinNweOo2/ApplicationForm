Rails.application.routes.draw do
    get 'applicant/form'
    get 'confirm', to: "applicant#confirm"
    get 'form' , to: "applicant#form"
    root 'applicant#form'
  
    resources :applicant, only: [:index,:show,:destroy] do
      collection do
        get :_form, to: "applicant#form"
        post :confirm    
        post :save
      end
    end
  
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  
