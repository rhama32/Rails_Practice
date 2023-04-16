Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #ルーティング・HTTPメソッド
  # GET : 主にページを表示する時
  # POST：主にデータを新しく登録する時
  # PUT：主にデータを更新する時
  # DELETE：主にデータを削除する時
  
  get 'top' => 'homes#top'
  get 'about' => 'homes#about'
  
  get 'lists/new'
  post 'lists' => 'lists#create'
  get 'lists' => 'lists#index'
  
  #asリストを付与することで、pass名を変更する
  #listとした場合、pass名はlistとなる。取得のURL自体はlists/1のようになる。
  get 'lists/:id' => 'lists#show', as:'list'
  get 'lists/:id/edit' => 'lists#edit', as:'edit_list'
  patch 'lists/:id/' => 'lists#update', as:'update_list'
  delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'
  
  devise_for :users
  root to: 'homes#top'
end