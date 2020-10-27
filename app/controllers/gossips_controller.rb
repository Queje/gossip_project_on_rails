class GossipsController < ApplicationController
  def new
    @post = Gossip.new
  end

  def create

    @post = Gossip.new(title: params[:title], content: params[:content], user_id: 31, tag_id: 1)

    if @post.save
      puts "saved"
      redirect_to root_path, notice: "potin sauvegardé!"

    else
      puts "erreur"
      puts @post.errors.messages
      render "new"
    
    end

  end
end
