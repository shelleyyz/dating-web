class RelationshipsController < ApplicationController
  def index
    @users = User.all
    # @current_user = session[:user_id]
    @likers = Relationship.where(:liker_id => @current_user.id)
    @user_likees = Relationship.where(:likee_id => @current_user.id)
    # @current_user_like_click = User.find params[:id]

    #@match = Relationship.where(:liker_id => @likers.first.likee_id)

  end

  def new
    @relationship = Relationship.new
  end

  def show
    @likees = @current_user.likes

    redirect_to users_path
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
    relationship.likee_id = params[:id]
    relationship.liker_id = @current_user.id
    # @likee = User.find params[:id]
    relationship.save



    redirect_to relationship_path(relationship.likee_id)
  end

#set relationship to inactive
  def destroy
    relationship = Relationship.where(:liker_id => @current_user.id)
    relationship_likee = relationship.where(:likee_id => params[:id])
    relationship_likee[0].destroy
    redirect_to users_path
  end

end
