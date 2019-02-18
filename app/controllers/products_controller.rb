class ProductsController < ApplicationController
before_action :set_product,only: [:edit,:destroy,:update,:show]
before_action :require_user,expect: [:index,:show]
before_action :require_same_user,only: [:edit,:update,:destroy]

def index
 @products = Product.paginate(page:params[:page],per_page: 3)
end

def new
   @product = Product.new
end

def create
  # debugger

   @product = Product.new(product_params)
   @product.user = current_user  
   @product.dayinput = Time.now
   if @product.save
   	   flash[:success] = "Product was successfully with product name : " + @product.name #flash la mot mang hash (mang lien ket)
       redirect_to product_path (@product)
   else
   	render 'new'
   end
end

def destroy
	@product.destroy
	flash[:danger] = " Product was destroy successfully " 
	redirect_to products_path
end

def show

end

def edit

end 

def update
 if !Product.exists?(:name => product_params[:name]) then #kiem tra trung username
   if @user.update(product_params)
   	   flash[:success] = "Product was successfully" 
       redirect_to product_path (@product)
   else
   	render 'new'
   end
 else
   flash[:success] = "name product don't like" 
   redirect_to product_path (@product)
 end
end

	

 private
   def set_product
     @product = Product.find(params[:id])
   end

   def product_params
   	params.require(:product).permit(:name,:decsription)
   end

   def require_same_user
    if current_user != @product.user && current_user.admin?
      flash[:danger] = "You can only edit or delete your owm product"
      redirect_to root_path
    end
   end


end
