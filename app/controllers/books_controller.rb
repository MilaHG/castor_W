class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def create
    # avec la méthode .create :
    # params va récupérer la valeur de l'attribut 'name' correspondant dans la balise HTML
    # rappel ==> title: params[:title] est un Hash ou table de hashage cle: valeur
    Book.create title: params[:title]
    # avec la méthode .new :
    # mon_livre = Book.new
    # mon_livre.title = params[:title]
    # mon_livre.save
    redirect_to '/books'
  end
end
