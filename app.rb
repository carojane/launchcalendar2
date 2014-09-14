require 'sinatra'
require 'sinatra/activerecord'
require 'pry'

configure do
  set :views, 'app/views'
end

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
end

##########################################################
##########################################################
##########################################################

def validate_url
end

def update_week(params)
    week = []
    week = Week.find_by(campaign_id: params[:campaign].to_i, week_number: params[:week].to_i)

    unless week == []
      week.update(systemscheck: params[:systemscheck]) if params[:systemscheck] != ""
      week.update(blog_name: params[:blog_title]) if params[:blog_title] != ""
      week.update(blog_url: params[:blog_url]) if params[:blog_url] != ""
    end
end

def add_focus(params)
  week = Week.find_by(week_number: params[:week].to_i, campaign_id: params[:campaign].to_i)
  date = (week.week_start + params[:day].to_i)
  if Day.find_by(date: date) == nil
    Day.create(focus: params[:focus], campaign_id: params[:campaign], date: date)
  else
    day = Day.find_by(date: date)
    day.update(focus: params[:focus])
  end
end

def add_assignment(params)
  week = Week.find_by(campaign_id: params[:campaign].to_i, week_number: params[:week].to_i)
  date = (week.week_start + params[:day].to_i)

  if Assignment.find_by(name: params[:name]) == nil
    assignment = Assignment.new(name: params[:name], campaign_id: params[:campaign], date: date)
  else
    assignment = Assignment.find_by(name: params[:name])
    assignment.update(campaign_id: params[:campaign], date: date)
  end

  assignment.update(url: params[:url]) if params[:url] != ""

  if params[:day] == "5"
    assignment.update(extra: true)
  else
    assignment.update(extra: false)
  end
  binding.pry
end

##########################################################
##########################################################
##########################################################

get '/' do
  @campaigns = Campaign.all.order(name: :asc)

  erb :index
end

get '/forms' do
  erb :'/forms/index'
end

post '/day' do
  @campaigns = Campaign.all.order(name: :asc)

  if params[:week] && params[:focus] && params[:focus] != ""
    add_focus(params)
    redirect '/'
  end

  erb :'/forms/index'
end

post '/assignment' do
  if params[:week] && params[:name] != ""
    add_assignment(params)
    redirect '/'
  end

  erb :'/forms/index'
end

post '/week' do
  if params[:week] && (params[:systemscheck] != "" || params[:blog_title] != "" || params[:blog_url] != "")
    update_week(params)
    redirect '/'
  end

  erb :'/forms/index'
end
