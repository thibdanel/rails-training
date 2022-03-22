class CasquesController < ApplicationController

  def index
    @casques = Casque.all
  end

  def show
    @casque = Casque.find(params[:id])
  end
end
