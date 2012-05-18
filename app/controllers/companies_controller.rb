require 'open-uri'

class CompaniesController < ApplicationController
  
  def search
    @companies = []
    doc = Nokogiri::XML(open("http://www.charitynavigator.org/feeds/search7/?appid=#{ENV['CN_KEY']}&keyword=#{params[:q]}"))
    doc.css("charity").each do |charity|
      c = Company.new
      c.orgid = charity.css('orgid').text
      c.charity_name = charity.css('charity_name').text
      c.city = charity.css('city').text
      c.state = charity.css('state').text
      c.category = charity.css('category').text
      c.cause = charity.css('cause').text
      c.tag_line = charity.css('tag_line').text
      c.url = charity.css('url').text
      c.ein = charity.css('ein').text 
      @companies << c
    end
     return @companies
  end

  # GET /companies
  # GET /companies.json
  
  def show
    
  end
  
  def index
   
  end

 

  # GET /companies/new
  # GET /companies/new.json
  def new
   
  end

  # GET /companies/1/edit
  def edit
   
  end

  # POST /companies
  # POST /companies.json
  def create
  
  end

  # PUT /companies/1
  # PUT /companies/1.json
  def update
   
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
  
  end
end
