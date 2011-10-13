require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'misc'" do
    it "should be successful" do
      get 'misc'
      response.should be_success
    end
  end

end
