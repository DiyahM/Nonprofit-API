# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'open-uri'


Company.delete_all
open("public/data-download-pub78.txt") do |companies|
  companies.read.each_line do |company|
    ein, dba, city, state, status, country, status_desc = company.chomp.split("|")
    Company.create!(:ein => ein, :dba => dba, :city => city, :state => state, 
                    :country => country, :status_desc => status_desc)
    end
  end
