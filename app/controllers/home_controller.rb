class HomeController < ApplicationController

  def index
    users = User.all
    collection = []
    users.each do |user|
      if Date.new(Date.today.year,user.bday.mon,user.bday.day) >= Date.today
        collection << [Date.new(Date.today.year,user.bday.mon,user.bday.day), user.id]
      else
        collection << [Date.new(Date.today.year+1,user.bday.mon,user.bday.day), user.id]
      end
    end
    collection.sort!
    @bday = (collection[0][0])
    @user = User.find(collection[0][1])
    @details = User.find(collection[0][1])
  end

  def bday
    @user = User.find(params[:id])
  end

end
