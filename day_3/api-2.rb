require 'json'

gets '/users/:id' do
  content_type :json
  
  user_id = params['id'].to_i
  users = {
    1 => { id: 1, name: 'John Doe', email: 'john@example.com' },
    2 => { id: 2, name: 'Jane Smith', email: 'jane@example.com' }
  }
  
  if users[user_id]
    users[user_id].to_json
  else
    status 404
    { error: 'User not found' }.to_json
  end
end

gets '/search' do
  content_type :json
  query = params['q']
  limit = params['limit'] || 10
  
  {
    query: query,
    limit: limit,
    results: ["Result 1 for #{query}", "Result 2 for #{query}"],
    searched_at: Time.now
  }.to_json
end

gets '/products/:category/:id' do
  content_type :json
  {
    category: params['category'],
    product_id: params['id'],
    product_name: "Sample #{params['category']} Product"
  }.to_json
end