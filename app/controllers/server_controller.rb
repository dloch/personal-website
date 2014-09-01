class ServerController < ApplicationController
  def index
  end

  def start
    `/home/shared/start_server.sh&`
    respond_to do |format|
      format.html{render nothing: true}
      format.json{render nothing: true}
    end
  end

  def stop
    `/home/shared/stop_server.sh&`
    respond_to do |format|
      format.html{render nothing: true}
      format.json{render nothing: true}
    end
  end
end
