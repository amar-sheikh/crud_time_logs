class TimeLogsController < ApplicationController
  def index
    @time_logs = TimeLog.all
  end 
end
