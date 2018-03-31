Rails.application.routes.draw do

  resources :events
  root 'home#home'
  get '/faculty', to: 'faculty#faculty'
  get '/faculty/d_adane', to: 'faculty#d_adane'
  get '/faculty/p_adane', to: 'faculty#p_adane'
  get '/faculty/c_upadhyay', to: 'faculty#c_upadhyay'
  get '/faculty/c_thaokar', to: 'faculty#c_thaokar'
  get '/faculty/m_tayal', to: 'faculty#m_tayal'
  get '/faculty/r_kadu', to: 'faculty#r_kadu'
  get '/faculty/n_ansari', to: 'faculty#n_ansari'
  get '/faculty/p_kokardekar', to: 'faculty#p_kokardekar'
  get '/faculty/a_chandak', to: 'faculty#a_chandak'
  get '/faculty/p_assudani', to: 'faculty#p_assudani'
  get '/faculty/k_jain', to: 'faculty#k_jain'
  get '/faculty/r_joshi', to: 'faculty#r_joshi'

end