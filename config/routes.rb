Rails.application.routes.draw do
    get 'applicant/form'
    get 'form' , to: "applicant#form"
    root 'applicant#form'
  
    resources :applicant, only: [:index,:destroy] do
      collection do
        post :confirm    
        post :save
        get 'confirm', to:"applicant#confirmForm"
      end
    end
  
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  
