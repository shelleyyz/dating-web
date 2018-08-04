class RelationshipsController < ApplicationController
  def index
    @users = User.all
    # @create_relationship = user.active_relationships.create(likee.id: other_user.id)

  end

  def show
  end

  def new
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

    user.User.find(params[:likee_id])
    # @current_user.liker(user)
    raise "hell"


  end
end
