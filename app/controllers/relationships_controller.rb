class RelationshipsController < ApplicationController
  def index
    @users = User.all
    @likers = Relationship.where(:liker_id => @current_user.id)
    @user_likees = Relationship.where(:likee_id => @current_user.id)

  end

  def new
    @relationship = Relationship.new
  end

  def show
    @likees = @current_user.likes

    redirect_to users_path
  end

  def create

    relationship = Relationship.new
    relationship.likee_id = params[:id]
    relationship.liker_id = @current_user.id
    # @likee = User.find params[:id]
    relationship.save
    redirect_to relationship_path(relationship.likee_id)
  end

#remove relationship from find match
  def destroy
    relationship = Relationship.where(:liker_id => @current_user.id)
    relationship_likee = relationship.where(:likee_id => params[:id])
    relationship_likee[0].destroy
    redirect_to users_path
  end

#remove relationship from matched
  def destroy2
    relationship = Relationship.where(:liker_id => @current_user.id)
    relationship_likee = relationship.where(:likee_id => params[:id])
    relationship_likee[0].destroy
    redirect_back :fallback_location => root_path
  end

end
