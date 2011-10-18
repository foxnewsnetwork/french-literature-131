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
    @projects.push({
			:type => "projects",
      :img => "#{@album}projects.png" ,
      :url => "#{@album}projects.png" ,
      :text => "CINEMA CubeSAT was a satellite aerospace project with the Space Science Labs at UC Berkeley. The sat is scheduled to launch before the end of 2011. I worked on the sun sensors on the satellite."
    })
    @projects.push({
			:type => "projects",
      :img => "#{@album}projects.png" ,
      :url => "#{@album}projects.png" ,
      :text => "Knowz Doze was a hardware arduino platform designed to be a blutooth attachment to help sleepy drivers stay awake during long drives. I worked on this project with my UC Berkeley team members."
    })
    for i in 2..4
      @projects.push({ 
				:type => "projects",
        :img => "#{@album}Untitled-2.jpg" ,
        :url => "#{@album}project00#{i}.png" ,
        :text => "Additional contents coming..."
      })
    end
    @employees.push({
			:type => "employees",
      :img => "#{@album}employee.png" ,
      :url => "#{@album}employee.png" ,
      :text => "Thomas Han Chen is the founder of ML-DS; a graduate student in ME by major he has since then opted to learn, do, and try a bit of everything in an effor to shape the future."
    })
    for i in 1..4
      @employees.push({ 
				:type => "employees",
        :img => "#{@album}MahouShoujoonCrack.jpg" ,
        :url => "#{@album}employee00#{i}.png" ,
        :text => "No one else here yet..."
      })
    end
  end

  def misc
  end

end
