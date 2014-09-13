class ExperienceController < ApplicationController
  #Build experience
  def get_experience
    respond_to do |format|
      format.html {render nothing: true}
      format.json do
        experience = Experience.roots 
        experience = experience.map{|exp| {name: exp.name, children: exp.children.map{|child| {name: child.name, size: child.value}}}}
        return render(json: {name: "experience", children: experience})
      end
    end
  end
end
