require 'json'

gets '/hello' do
  content_type :json
  { message: 'Hello World!', timestamp: Time.now }.to_json
end

gets '/users' do
  content_type :json
  users = [
    { id: 1, name: 'aditya', email: 'aditya@example.com' },
    { id: 2, name: 'adi', email: 'adi@example.com' }
  ]
  users.to_json
end
