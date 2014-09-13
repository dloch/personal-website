class ExperienceController < ApplicationController
  #Build experience
  def get_experience
    respond_to do |format|
      format.html {render nothing: true}
      format.json do
        experience = Experience.roots 
        experience.map{|exp| [exp.name, exp.children.map{|child| {name: child.name, value: child.value}}]}
        Rails.logger.error experience.inspect
        return render(json: experience)
      end
    end
  end
end
