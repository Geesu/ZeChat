WebsocketRails::EventMap.describe do
  namespace :message do
    subscribe :create, to: MessagesController, with_method: :create
    subscribe :show, to: MessagesController, with_method: :show
    subscribe :edit, to: MessagesController, with_method: :edit
  end
  namespace :user do
    subscribe :login, to: UsersController, with_method: :login
  end
end
