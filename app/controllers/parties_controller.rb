class PartiesController < ApplicationController
  def index
      @parties = Party.all
  end

  def show
      @party = Party.find(params[:id])
  end

  def new
    @party = Party.new
    @party.snacks.build
    @party.snacks.build
    @party.snacks.build

  end

  def create
    @party = Party.create(params.require(:party).permit(:name, :budget, :date, snacks_attributes: [:name, :description]))
  end


end
