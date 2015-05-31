class QuestsController < ApplicationController

  def index
    @quests=Quest.all
  end

  def new
    @quest=Quest.new
  end

  def create
    quest=Quest.new(quest_params)
    quest.save
    redirect_to root_path
  end

  def quest_params
    params.require(:quest).permit(:name)
  end
end
