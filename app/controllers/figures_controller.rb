require 'pry'
class FiguresController < ApplicationController
  
  get '/figures' do 
    @figures = Figure.all 
    erb :'figures/index'
  end 
  
  get '/figures/new' do 
    @figures = Figure.all 
    @titles = Title.all 
    @landmarks = Landmark.all
    erb :'figures/new' 
  end 
  
<<<<<<< HEAD
   post '/figures' do
    @figure = Figure.create(params['figure'])
    unless params[:landmark][:name].empty?
      @figure.landmarks << Landmark.create(params[:landmark])
    end

    unless params[:title][:name].empty?
      @figure.titles << Title.create(params[:title])
    end

    @figure.save
    redirect to "/figures/#{@figure.id}"
  end

=======
  post '/figures' do
    binding.pry
    @figure = Figure.create(params[:figure])
    if !!params[:title][:name].empty?
    @title = Title.create(params[:title])
    end 
    if !!params[:landmark][:name].empty?
    @landmark = Landmark.create(params[:landmark])
    end 
  
    redirect to '/figures/show'
  end 
>>>>>>> c822646ee7002eca2e943de29bc6c3fe18510ca6
  
    get '/figures/:id' do
    @figure = Figure.find_by_id(params[:id])
     erb :'/figures/show'
  end
  
    get '/figures/:id/edit' do 
      @figure = Figure.find_by_id(params[:id])
      erb :'/figures/edit'
<<<<<<< HEAD
    end
=======
    end 
    
    post '/landmarks/:id' do
      @figure = Figure.find_by_id(params[:id])
      @figure.name = Figure.find_or_create_by(:name => params["name"])
      @figure.update(params["figure"])
    
      redirect to "figures/#{@figure.id}"
  end 
>>>>>>> c822646ee7002eca2e943de29bc6c3fe18510ca6
    
end
