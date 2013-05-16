require 'spec_helper'

describe PagesController do
  
  render_views

  describe "GET 'home'" do

    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have right title" do
      visit 'home'
      page.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | Home")
    end

    it "should have non-blank" do
        visit 'home'
        response.body.should_not =~ / <body>\s*<\/body>/
    end

  end

  describe "GET 'contact'" do

    it "returns http success" do
      get 'contact'
      response.should be_success
    end


      it "should have right title" do
      visit 'contact'
      page.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | Contact")

      end   
  end

   describe "ABOUT 'about'" do

    it "returns http success" do
      get 'about'
      response.should be_success
    end

     it "should have right title" do
      visit 'about'
      page.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | About")
    end

  end

end
