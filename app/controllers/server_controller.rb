class ServerController < ApplicationController
  def index
  end

  def start
    `/home/shared/start_server.sh`
    respond_to do |format|
      format.html{render nothing: true}
      format.json{render nothing: true}
    end
  end

  def stop
    `/home/shared/stop_server.sh`
    respond_to do |format|
      format.html{render nothing: true}
      format.json{render nothing: true}
    end
  end

  def status
    status = `/home/shared/server_status`.to_bool
    respond_to do |format|
      format.html{render nothing: true}
      format.json{render json: status}
    end
  end
end
