class PagesController < ApplicationController
  def home
    @album = "http://i299.photobucket.com/albums/mm281/foxnewsnetwork/"
    @title = "ML-DS"
    
    @home = { 
      :cloud => "#{@album}cloud_icon.png" ,   
      :moon => "#{@album}moon_icon.png" ,
      :ML => "#{@album}ml_icon.png" ,
      :DS => "#{@album}ds_icon.png" ,
      :text => {
               :ML => "Projects" ,
               :moon => "About" ,
               :cloud => "Dreamers" ,
               :DS => "Misc"
               }
    }
    @about = "Nothing else; eventually this goes on a MVC"
    
    @projects = Array.new
    @employees = Array.new
    for i in 0..4
      @projects.push({ 
        :img => "#{@album}Untitled-2.jpg" ,
        :url => "#{@album}project00#{i}.png" ,
        :text => "stuff here"
      })
      @employees.push({ 
        :img => "#{@album}MahouShoujoonCrack.jpg" ,
        :url => "#{@album}employee00#{i}.png" ,
        :text => "samefag text"
      })
    end
  end

  def misc
  end

end
