class RelationshipsController < ApplicationController
  def index
    @users = User.all
    # @current_user = session[:user_id]
    @likers = Relationship.where(:liker_id => @current_user.id)
    @user_likees = Relationship.where(:likee_id => @current_user.id)
    @match = Relationship.where(:liker_id => @likers.first.likee_id)
    
    # @create_relationship = user.active_relationships.create(likee.id: other_user.id)
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
      #@current_user.likers // likers relationship are stored.

    #
    #
    # @users = User.all
    # @liker = active_relationship.liker
    # @likee = active_relationship.likee
    # @create_relationship = user.active_relationships.create(likee_id: user.id)
    # @build_relationship = user.active_relationships.build(likee_id: user.id)
    #
    #may need to put these in user model?
    #   def like(user)
    #     active_relationships.create(likee_id: other_user.id)
    #   end
    #
    #   def unlike(user)
    #     active_relationships.find_by(likee_id: other_user.id).destroy
    #   end
    #
    #   def like?(user)
    #     liking.include?(user)
    #
    #   end

    #TODO
    #grab session id => liker_id
    #grab liked person ID => likee_id
    # user.User.find(params[:likee_id])
    # @current_user.liker(user)

  end

  # @relationship_all = Relationship.all
  #
  # def find_match
  #   @relationship_all.each do | user |
  #
  #
  # end

#  @user_likers = @current_user.likers
#  @user_likees = @current_user.liking
  #[#<Relationship id: 1, liker_id: 2, likee_id: 4, relationship_status: nil, created_at: "2018-08-06 05:54:26", updated_at: "2018-08-06 05:54:26">]>



#set relationship to inactive
  def deactivate_relationship

  end

    # # method for create and destroy relationship
    # def like(user)
    #   active_relationships.create(likee_id: user_id)
    # end
    #
    # def unlike(user)
    #   active_relationships.find_by(likee_id: user_id).destroy
    # end
    #
    # def liking?(user)
    #   liking.include?(user)
    # end

end
