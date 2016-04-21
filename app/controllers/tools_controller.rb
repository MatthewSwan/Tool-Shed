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
    tool = Tool.create(params[:tool].symbolize_keys)
    redirect_to tools_path
  end
end
