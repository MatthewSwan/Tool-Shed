class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def new
    @tool = Tool.new
  end

  def create
    require "pry"
    binding.pry
    tool = Tool.create(params[:tool])
    redirect_to tools_path
  end
end
