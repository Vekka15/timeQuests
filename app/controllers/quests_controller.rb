class QuestsController < ApplicationController

  def index
    @quests=Quest.all
  end

  def new
    @quest=Quest.new
  end

  def create
    @quest=Quest.new(quest_params)
    @quest.user_id=current_user.id
    if @quest.save
      redirect_to root_path
    else
      @error=1
      flash[:notice]="Empty field"
      render new_quest_path(@quest)
    end
  end

  def quest_params
    params.require(:quest).permit(:name,:category)
  end

end
