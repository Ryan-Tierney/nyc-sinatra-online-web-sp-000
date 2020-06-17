class LandmarksController < ApplicationController
  
  get '/landmarks' do 
    @landmarks = Landmark.all 
    erb :'landmarks/index'
  end 
  
  get '/landmarks/new' do 
    @landmarks = Landmark.all
    erb :'landmarks/new' 
  end 
  
<<<<<<< HEAD
   post '/landmarks' do
    @landmark = Landmark.create(params['figure']['landmark'])
    @landmark.save
    
    redirect to "/landmark/#{@landmark.id}"
  end
=======
  post '/landmark' do 
    @landmark = Landmark.create(params[:landmark])
    
    redirect to '/landmark/show'
  end 
>>>>>>> c822646ee7002eca2e943de29bc6c3fe18510ca6
  
  get '/landmarks/:id' do
     @landmark = Landmark.find_by_id(params[:id])
     erb :'/landmarks/show'
  end
  
  get '/landmarks/:id/edit' do 
    @landmark = Landmark.find_by_id(params[:id])
    erb :'/landmarks/edit'
  end 
  
<<<<<<< HEAD
  #post '/landmarks/:id' do
    #@landmark = Landmark.find_by_id(params[:id])
    #@landmark.update(params[:landmark])
    #@landmark.save
    
    #redirect to "landmarks/#{@landmark.id}"
  #end 
=======
  post '/landmarks/:id' do
    @landmark = Landmark.find_by_id(params[:id])
    @landmark.update(params[:landmark])
    @landmark.save
    
    redirect to "landmarks/#{@landmark.id}"
  end 
>>>>>>> c822646ee7002eca2e943de29bc6c3fe18510ca6
end
