class StaticPagesController < ApplicationController
  def home

  end

  def welcome
    @first_name = params[:first_name]
  end

  def team

  end

  def contact

  end

  def gossip_page
    @gossip = params[:gossip_page]
    @gossip_id = Gossip.find(params[:gossip_page])
  end

  def author
    @author_info = Gossip.find(params[:author_info]).user
  end
end
