class GossipsController < ApplicationController
  def index
    @gossip = Gossip.all
  end

  def show
    @gossip = params[:id]
    @gossip_id = Gossip.find(params[:id])
  end
  
  def new
    @post = Gossip.new
  end

  def create

    @post = Gossip.new(title: params[:title], content: params[:content], user_id: 31, tag_id: 1)

    if @post.save
      puts "saved"
      redirect_to gossips_path, notice: "potin sauvegardé!"

    else
      puts "erreur"
      puts @post.errors.messages
      render "new"
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

end
