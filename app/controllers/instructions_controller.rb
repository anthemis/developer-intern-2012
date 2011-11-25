class InstructionsController < ApplicationController
  # GET /instructions
  # GET /instructions.json
  def index
    @instructions = Instruction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instructions }
    end
  end

  # GET /instructions/1
  # GET /instructions/1.json
  def show
    @instruction = Instruction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instruction }
    end
  end

  # GET /instructions/new
  # GET /instructions/new.json
  def new
    @instruction = Instruction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @instruction }
    end
  end

  # GET /instructions/1/edit
  def edit
    @instruction = Instruction.find(params[:id])
  end

  # POST /instructions
  # POST /instructions.json
  def create
    @instruction = Instruction.new(params[:instruction])

    respond_to do |format|
      if @instruction.save
        format.html { redirect_to @instruction, notice: 'Instruction was successfully created.' }
        format.json { render json: @instruction, status: :created, location: @instruction }
      else
        format.html { render action: "new" }
        format.json { render json: @instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instructions/1
  # PUT /instructions/1.json
  def update
    @instruction = Instruction.find(params[:id])

    respond_to do |format|
      if @instruction.update_attributes(params[:instruction])
        format.html { redirect_to @instruction, notice: 'Instruction was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @instruction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instructions/1
  # DELETE /instructions/1.json
  def destroy
    @instruction = Instruction.find(params[:id])
    @instruction.destroy

    respond_to do |format|
      format.html { redirect_to instructions_url }
      format.json { head :ok }
    end
  end
end
