Rails.application.routes.draw do

  resources :events
  resources :notices
  root 'home#home'

  get '/admin', to: 'admin#admin'
  get '/admin/notices', to: 'admin#notices'
  get '/admin/notices/:id/edit_notice', to: 'admin#edit_notice'
  get '/admin/notices/:id/destroy_notice', to: 'admin#destroy_notice'
  get '/admin/events', to: 'admin#events'
  get '/admin/events/:id/edit_event', to: 'admin#edit_event'
  get '/admin/events/:id/destroy_event', to: 'admin#destroy_event'

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
