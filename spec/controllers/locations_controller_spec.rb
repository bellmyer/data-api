require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe LocationsController, type: :controller do
  render_views
  
  let(:user) { create :user, admin: true }

  # This should return the minimal set of attributes required to create a valid
  # Industry. As you add validations to Industry, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { attributes_for(:location) }

  let(:invalid_attributes) {
    {name: location.name }
  }
  
  let(:location) { create :location }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # IndustriesController. Be sure to keep this updated too.
  let(:valid_session) { {} }
  
  before do
    sign_in user
  end

  describe "GET #index" do
    it "returns a success response" do
      Location.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      get :show, params: {id: location.id}, session: valid_session
      expect(response).to be_successful
    end
  end
end
