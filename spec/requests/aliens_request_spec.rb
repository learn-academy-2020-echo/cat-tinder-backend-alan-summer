require 'rails_helper'

describe "Aliens", type: :request do
  it "gets a list of Aliens" do
    # Create a new cat in the Test Database (this is not the same one as development)
    Alien.create(name: 'E.T.', distance:100, planet:'unknown', img:'https://www.sterikskatolskaskola.se/wp-content/uploads/2017/10/ET.jpg')

    # Make a request to the API
    get '/aliens'

    # Convert the response into a Ruby Hash
    json = JSON.parse(response.body)

    # Assure that we got a successful response
    expect(response).to have_http_status(:ok)

    # Assure that we got one result back as expected
    expect(json.length).to eq 1
  end

  it "creates a alien" do
    # The params we are going to send with the request
    alien_params = {
      alien: {
        name: 'blob',
        distance: 400,
        planet: 'jupitor',
        img: 'https://www.sterikskatolskaskola.se/wp-content/uploads/2017/10/ET.jpg'
      }
    }

    # Send the request to the server
    post '/aliens', params: alien_params

    # Assure that we get a success back
    expect(response).to have_http_status(:ok)

    # Look up the cat we expect to be created in the Database
    alien = Alien.first

    # Assure that the created cat has the correct attributes
    expect(alien.name).to eq 'blob'
  end

  it 'doesnt create an alien without a name' do 
    alien_params = {
      alien: {
        distance: 400,
        planet: 'jupitor',
        img: 'https://www.sterikskatolskaskola.se/wp-content/uploads/2017/10/ET.jpg'
      }
    }
    post '/aliens', params: alien_params 
    expect(response.status).to eq 422
    json = JSON.parse(response.body)
    expect(json['name']).to include "can't be blank"
end

end


