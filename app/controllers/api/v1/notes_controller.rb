class Api::V1::NotesController < ApplicationController
    def index
        note = Note.all
        render json: note
    end

    def show
        note = Note.find(params[:id])
        render json: note
    end

    def new
        note = Note.new
        render json: note
    end

    def create
        note = Note.create(note_params)
        render json: note
    end

    def edit
        note = Note.find(params[:id])
        render json: note
    end

    def update 
        note = Note.find(params[:id])
        note.update(note_params)
        render json: note
    end

    def destroy
        note = Note.find(params[:id])
        note.destroy
        render json: note
    end

    private
    def note_params
        params.require(:note).permit(:users_mocktail_id, :user_id, :note)
    end
end
