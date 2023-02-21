Rails.application.routes.draw do
  root "top#index"

  devise_for :users, controllers: {
    # ↓ ローカルに追加されたコントローラーを参照する(コントローラー名: "コントローラーの参照先")
    registrations: "users/registrations",
    sessions: "users/sessions",
    passwords: "users/passwords",
    confirmations: "users/confirmations"
  }
end
