class RelationshipsController < ApplicationController
  def index
    @users = User.all
    # @current_user = session[:user_id]
    @likers = Relationship.where(:liker_id => @current_user.id)
    @user_likees = Relationship.where(:likee_id => @current_user.id)
    #@match = Relationship.where(:liker_id => @likers.first.likee_id)

  end

  def new
    @relationship = Relationship.new
  end

  def show
  end

  def create
    #TODO check input is valid (guard clause) -
      # def my_method(variable)
      #   if variable == 'great'
      #     # do something great
      #   else
      #     return nil
      #   end
      # end
    # check the relationships already exist - error msg if its exist
    # Create new relationships - asked http status code and error return from controller
    relationship = Relationship.new
    relationship.likee_id = params[:user_id]

    relationship.liker_id = @current_user.id
    relationship.save

    # if (@current_user.matches.include? user_id == true)
    #   flash.now[:notice] = 'You matched!'
    #   raise "hell"
    # else
    #
    # end

  end


#set relationship to inactive
  def deactivate_relationship

  end

end
