
  Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, '2f2bec090734463c6242', '7d8a48868cb5dd252ef7441e2aa85dcbda3c2c4e'
  end