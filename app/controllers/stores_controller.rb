class StoresController < ApplicationController
  def index
  end

  def buy
  end

  def remove
  end

  def logout
    reset_session
    redirect_to '/'
  end
end
