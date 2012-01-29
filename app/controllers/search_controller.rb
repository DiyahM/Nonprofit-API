require 'will_paginate/array'
require 'will_paginate/collection'


class SearchController < ApplicationController
  
  def index
    
    conditions = []
    arguments = {}
    
    unless params[:dba].blank?
      conditions << 'dba LIKE :dba'
      arguments[:dba] = "%#{params[:dba]}%"
    end
    
    unless params[:ein].blank?
      conditions << 'ein = :ein'
      arguments[:ein] = params[:ein]
    end
    
    unless params[:city].blank?
      conditions << 'city LIKE :city'
      arguments[:city] = params[:city]
    end
    
    unless params[:state].blank?
      conditions << 'state LIKE :state'
      arguments[:state] = params[:state]
    end
    
    if params[:page].blank?
      params[:page] = 1
    end
    
    all_conditions = conditions.join(' AND ')
    
    i = 0
    ret_array = []
    Company.find_in_batches(:batch_size => 50, :conditions => [all_conditions,arguments]) do |companies|
      ret_array[i] = companies
      i +=1
    end
    
    total = 0
    ret_array.each do |arr|
      total += arr.length
    end
      
    
    
    paged = ret_array.paginate(:page => params[:page])
    @return = {}
    @return[:length] = total
    @return[:page] = paged.current_page
    @return[:next_page] = paged.next_page
    @return[:prev_page] = paged.previous_page
    @return[:results] = paged
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @return}
    end
  end
end
