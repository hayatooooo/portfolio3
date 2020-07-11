class CountsController < ApplicationController
  before_action :authenticate_user!

  def top
    if Count.find_by(user_id: current_user.id).nil?
      @createcount = Count.new(user_id: current_user.id,count1: 0,count2: 0,count3: 0,count4: 0,count5: 0)
      @createcount.save
    else
    end
    @user = User.find_by(id: current_user.id)
    gon.username=@user.name
    @count = Count.find_by(user_id: current_user.id)
    gon.count1=@count.count1
    gon.count2=@count.count2
    gon.count3=@count.count3
    gon.count4=@count.count4
    gon.count5=@count.count5
    @totalcount = @count.count1+@count.count2+@count.count3+@count.count4+@count.count5
    @arraycount=[@count.count1,@count.count2,@count.count3,@count.count4,@count.count5]
  end

  def show
  end

  def update
    @count =Count.find_by(user_id: current_user.id)
    @count.update_attributes(count_params)
    redirect_to :root
  end

  private

  def count_params
    params.require(:count).permit(:count1,:count2,:count3,:count4,:count5)
  end
end
