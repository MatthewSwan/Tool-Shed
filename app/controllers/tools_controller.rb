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
    Tool.create(params[:tool].symbolize_keys)
    redirect_to tools_path
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def update
    tool = Tool.update(params[:id], {name: params[:tool][:name], price: params[:tool][:price], quantity: params[:tool][:quantity]})
    redirect_to tool_path tool
  end
end
