Rails.application.routes.draw do
  mount Phccontactor::Engine => "/contact_us"
  mount Phcaccounts::Engine => "/"
end
