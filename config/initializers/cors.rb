# whitelist certain domains
# credentials-- provides set of rules for communication

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do 
        origins "http://localhost:3000"
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
        #all resources and methods allowed
    end

    allow do 
        origins "http://localhost:3001"
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
        #all resources and methods allowed
    end

end