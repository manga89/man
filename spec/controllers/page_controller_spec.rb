require 'rails_helper'

RSpec.describe PageController, :type => :controller do

  describe "GET about_us" do
    it "returns http success" do
      get :about_us
      expect(response).to be_success
    end
  end

  describe "GET product" do
    it "returns http success" do
      get :product
      expect(response).to be_success
    end
  end

  describe "GET newsletter" do
    it "returns http success" do
      get :newsletter
      expect(response).to be_success
    end
  end

  describe "GET blog" do
    it "returns http success" do
      get :blog
      expect(response).to be_success
    end
  end

  describe "GET calender" do
    it "returns http success" do
      get :calender
      expect(response).to be_success
    end
  end

  describe "GET articles" do
    it "returns http success" do
      get :articles
      expect(response).to be_success
    end
  end

  describe "GET login" do
    it "returns http success" do
      get :login
      expect(response).to be_success
    end
  end

end
