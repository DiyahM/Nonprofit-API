require 'spec_helper'

describe CompaniesController do

  describe "search" do
    it "should search charity navigator" do
      get :search
      response.body.should include 
    end
  end
end