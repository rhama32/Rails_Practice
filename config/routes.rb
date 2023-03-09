Rails.application.routes.draw do
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
end