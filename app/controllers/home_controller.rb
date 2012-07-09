class HomeController < ApplicationController
  before_filter :authenticate_user!, :except =>'index'

  def index
    @page_header = "Welcome - Cliff's Hartman Model"
    @users = User.all
  end

  def my_list
    @home_tab = 'active'
    @page_header = "Home - Cliff's Hartman Model"
  	@result1 = Result.find_by_user_id_and_test_num(current_user,1)
    @result2 = Result.find_by_user_id_and_test_num(current_user,2)
  end	
  
	def testone
    @test_one_tab = 'active'
    @page_header = "Test One Items - Cliff's Hartman Model"
  	@list = Testone.all
  end	

	def testtwo
    @test_two_tab = 'active'
    @page_header = "Test Two Items - Cliff's Hartman Model"
  	@list = Testtwo.all
  end	

  def resultone
    @result_one_tab = 'active'
    @page_header = "Test One Results - Cliff's Hartman Model"
    @result = Result.find_by_user_id_and_test_num(current_user.id,params[:test].to_i)
    @list1 = Testone.all
  end 

  def resulttwo
    @result_two_tab = 'active'
    @page_header = "Test Two Results - Cliff's Hartman Model"
    @result = Result.find_by_user_id_and_test_num(current_user,params[:test])
    @list2 = Testtwo.all
  end 

  def result
    @result_tab = 'active'
    @page_header = "Test Results - Cliff's Hartman Model"
    
    @result1 = Result.find_by_user_id_and_test_num(current_user.id,1)

    if defined? @result1.item_order
      @avg_row_number = Testone.avg_row_number
      @avg_new_order = Testone.avg_new_order @result1.item_order
      @total_dim_i1 = total_dim_i1 @result1.item_order 
      @total_dim_e1 = total_dim_e1 @result1.item_order
      @total_dim_s1 = total_dim_s1 @result1.item_order
      
      @total_int_i1 = total_int_i1 @result1.item_order
      @total_int_e1 = total_int_e1 @result1.item_order
      @total_int_s1 = total_int_s1 @result1.item_order
      @total_dis1 = total_dis1 @result1.item_order
      @total_bali1 = total_bali1 @result1.item_order
      @total_bale1 = total_bale1 @result1.item_order
      @total_bals1 = total_bals1 @result1.item_order
      @total_rho1 = total_rho1 @result1.item_order
      @total_rho2 = total_rho2 @result1.item_order
      @total_rho3 = total_rho3 @result1.item_order

      @dif1 = dif1 @result1.item_order
      @int1 = int1 @result1.item_order
      @dim1 = dim1 @result1.item_order
      @di1 = di1 @result1.item_order

      @alper1 = (alper1 @result1.item_order).to_s + ' %'

      @vq1 = @int1 + @dif1 + @dim1 + @total_dis1
      @vq2 = @int1 + @dim1 + @total_dis1
      @dimper1 = (@dim1 * 100) / @dif1
      @intper1 = (@int1 * 100) / @dif1

    end

    @result2 = Result.find_by_user_id_and_test_num(current_user.id,2)
    if defined? @result2.item_order
      @avg_row_number2 = Testtwo.avg_row_number
      @avg_new_order2 = Testtwo.avg_new_order @result2.item_order
      @total_dim_i2 = total_dim_i2 @result2.item_order 
      @total_dim_e2 = total_dim_e2 @result2.item_order
      @total_dim_s2 = total_dim_s2 @result2.item_order
      
      @total_int_i2 = total_int_i2 @result2.item_order
      @total_int_e2 = total_int_e2 @result2.item_order
      @total_int_s2 = total_int_s2 @result2.item_order
      @total_dis2 = total_dis2 @result2.item_order
      @total_bali2 = total_bali2 @result2.item_order
      @total_bale2 = total_bale2 @result2.item_order
      @total_bals2 = total_bals2 @result2.item_order
      @total_rho4 = total_rho4 @result2.item_order
      @total_rho5 = total_rho5 @result2.item_order
      @total_rho6 = total_rho6 @result2.item_order

      @dif2 = dif2 @result2.item_order
      @int2 = int2 @result2.item_order
      @dim2 = dim2 @result2.item_order
      @di2 = di2 @result2.item_order

      @alper2 = (alper2 @result2.item_order).to_s + ' %'

      @vq3 = @int2 + @dif2 + @dim2 + @total_dis2
      @vq4 = @int2 + @dim2 + @total_dis2
      @dimper2 = (@dim2 * 100) / @dif2
      @intper2 = (@int2 * 100) / @dif2
    end
  end

  def final_result
    @final_result_tab = 'active'
    @page_header = "Final Results - Cliff's Hartman Model"
    
    @result1 = Result.find_by_user_id_and_test_num(current_user.id,1)

    if defined? @result1.item_order
      @avg_row_number = Testone.avg_row_number
      @avg_new_order = Testone.avg_new_order @result1.item_order
      @total_dim_i1 = total_dim_i1 @result1.item_order 
      @total_dim_e1 = total_dim_e1 @result1.item_order
      @total_dim_s1 = total_dim_s1 @result1.item_order
      
      @total_int_i1 = total_int_i1 @result1.item_order
      @total_int_e1 = total_int_e1 @result1.item_order
      @total_int_s1 = total_int_s1 @result1.item_order
      @total_dis1 = total_dis1 @result1.item_order
      @total_bali1 = total_bali1 @result1.item_order
      @total_bale1 = total_bale1 @result1.item_order
      @total_bals1 = total_bals1 @result1.item_order
      @total_rho1 = total_rho1 @result1.item_order
      @total_rho2 = total_rho2 @result1.item_order
      @total_rho3 = total_rho3 @result1.item_order

      @dif1 = dif1 @result1.item_order
      @int1 = int1 @result1.item_order
      @dim1 = dim1 @result1.item_order
      @di1 = di1 @result1.item_order

      @alper1 = (alper1 @result1.item_order).to_s + ' %'

      @vq1 = @int1 + @dif1 + @dim1 + @total_dis1
      @vq2 = @int1 + @dim1 + @total_dis1
      @dimper1 = (@dim1 * 100) / @dif1
      @intper1 = (@int1 * 100) / @dif1
      
      # ratings
      @dif1_rating = dif_rating @dif1 
      @dim_i1_rating = dim_rating @total_dim_i1  
      @dim_e1_rating = dim_rating @total_dim_e1  
      @dim_s1_rating = dim_rating @total_dim_s1
    end
    
    @result2 = Result.find_by_user_id_and_test_num(current_user.id,2)
    if defined? @result2.item_order
      @avg_row_number2 = Testtwo.avg_row_number
      @avg_new_order2 = Testtwo.avg_new_order @result2.item_order
      @total_dim_i2 = total_dim_i2 @result2.item_order 
      @total_dim_e2 = total_dim_e2 @result2.item_order
      @total_dim_s2 = total_dim_s2 @result2.item_order
      
      @total_int_i2 = total_int_i2 @result2.item_order
      @total_int_e2 = total_int_e2 @result2.item_order
      @total_int_s2 = total_int_s2 @result2.item_order
      @total_dis2 = total_dis2 @result2.item_order
      @total_bali2 = total_bali2 @result2.item_order
      @total_bale2 = total_bale2 @result2.item_order
      @total_bals2 = total_bals2 @result2.item_order
      @total_rho4 = total_rho4 @result2.item_order
      @total_rho5 = total_rho5 @result2.item_order
      @total_rho6 = total_rho6 @result2.item_order

      @dif2 = dif2 @result2.item_order
      @int2 = int2 @result2.item_order
      @dim2 = dim2 @result2.item_order
      @di2 = di2 @result2.item_order

      @alper2 = (alper2 @result2.item_order).to_s + ' %'

      @vq3 = @int2 + @dif2 + @dim2 + @total_dis2
      @vq4 = @int2 + @dim2 + @total_dis2
      @dimper2 = (@dim2 * 100) / @dif2
      @intper2 = (@int2 * 100) / @dif2

      # ratings
      @dif2_rating = dif_rating @dif2
      @dim_i2_rating = dim_rating @total_dim_i2
      @dim_e2_rating = dim_rating @total_dim_e2
      @dim_s2_rating = dim_rating @total_dim_s2
    end
  end

  def update_list1
    if request.post?
      items = params[:items][:order]
      test = params[:test]
      @result = Result.find_by_user_id_and_test_num(current_user.id,test)
      if @result.blank?
        @result = Result.create( :user_id => current_user.id,:item_order => items,:test_num => test )
      else
        @result.update_attributes( :user_id => current_user.id, :item_order => items, :test_num => test )
      end 
      flash[:notice] ="Test One result saved!"  
      redirect_to :action =>"result"
    end
  end

  def update_list2
    if request.post?
      items = params[:items][:order]
      test = params[:test]
      @result = Result.find_by_user_id_and_test_num(current_user.id,test)
      if @result.blank?
        @result = Result.create(:user_id => current_user.id,:item_order => items,:test_num => test )
      else
        @result.update_attributes( :user_id => current_user.id, :item_order => items, :test_num => test )
      end 
      flash[:notice] ="Test two result saved!"  
      redirect_to :action =>"result"
    end
  end

  def report
    @report_tab = 'active'
    @user = current_user
  end


  # calculating totals of the result 1.

  def total_dim_i1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      dim1 = (Testone.find(n).dim_i1(row) == '-') ? 0 : Testone.find(n).dim_i1(row)
      total += dim1
      n += 1
    end
    return total
  end

  def total_dim_e1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      dim1 = (Testone.find(n).dim_e1(row) == '-') ? 0 : Testone.find(n).dim_e1(row)
      total += dim1
      n += 1
    end
    return total
  end

  def total_dim_s1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      dim1 = (Testone.find(n).dim_s1(row) == '-')? 0 : Testone.find(n).dim_s1(row)
      total += dim1
      n += 1
    end
    return total
  end

  def total_int_i1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).int_i1(row)
      n += 1
    end
    return total
  end

  def total_int_s1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).int_s1(row)
      n += 1
    end
    return total
  end

  def total_int_e1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).int_e1(row)
      n += 1
    end
    return total
  end

  def dif1 new_order
    return total_dim_i1(new_order) + total_dim_s1(new_order) + total_dim_e1(new_order)
  end

  def int1 new_order
    return total_int_i1(new_order) + total_int_s1(new_order) + total_int_e1(new_order)
  end

  def dim1 new_order
    return 3*([total_dim_i1(new_order), total_dim_s1(new_order), total_dim_e1(new_order)].max) - dif1(new_order)
  end

  def di1 new_order
    return 3*([total_int_i1(new_order), total_int_s1(new_order), total_int_e1(new_order)].max) - int1(new_order)
  end

  def total_dis1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).dis1(row)
      n += 1
    end
    return total
  end

  def total_bali1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).bali1(row)
      n += 1
    end
    return total
  end

  def total_bale1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).bale1(row)
      n += 1
    end
    return total
  end

  def total_bals1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).bals1(row)
      n += 1
    end
    return total
  end

  def total_rho1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).rho1(row, new_order)
      n += 1
    end
    return total
  end

  def total_rho2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).rho2(row, new_order)
      n += 1
    end
    return total
  end

  def total_rho3 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testone.find(n).rho3(row, new_order)
      n += 1
    end
    return total
  end

  def alper1 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      bali1 = Testone.find(n).bali1(row)
      bale1 = Testone.find(n).bale1(row)
      bals1 = Testone.find(n).bals1(row)
      total += ( bali1 < 0 ) ? bali1 : 0
      total += ( bale1 < 0 ) ? bale1 : 0
      total += ( bals1 < 0 ) ? bals1 : 0
      n += 1
    end
    final = ((-total) * 100) / dif1(new_order)
    return final
  end

  
  # calculating totals for the result2 ################################################

  def total_dim_i2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      dim2 = (Testtwo.find(n).dim_i2(row) == '-') ? 0 : Testtwo.find(n).dim_i2(row)
      total += dim2
      n += 1
    end
    return total
  end

  def total_dim_e2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      dim2 = (Testtwo.find(n).dim_e2(row) == '-') ? 0 : Testtwo.find(n).dim_e2(row)
      total += dim2
      n += 1
    end
    return total
  end

  def total_dim_s2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      dim2 = (Testtwo.find(n).dim_s2(row) == '-')? 0 : Testtwo.find(n).dim_s2(row)
      total += dim2
      n += 1
    end
    return total
  end

  def total_int_i2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).int_i2(row)
      n += 1
    end
    return total
  end

  def total_int_s2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).int_s2(row)
      n += 1
    end
    return total
  end

  def total_int_e2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).int_e2(row)
      n += 1
    end
    return total
  end

  def dif2 new_order
    return total_dim_i2(new_order) + total_dim_s2(new_order) + total_dim_e2(new_order)
  end

  def int2 new_order
    return total_int_i2(new_order) + total_int_s2(new_order) + total_int_e2(new_order)
  end

  def dim2 new_order
    return 3*([total_dim_i2(new_order), total_dim_s2(new_order), total_dim_e2(new_order)].max) - dif2(new_order)
  end

  def di2 new_order
    return 3*([total_int_i2(new_order), total_int_s2(new_order), total_int_e2(new_order)].max) - int2(new_order)
  end

  def total_dis2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).dis2(row)
      n += 1
    end
    return total
  end

  def total_bali2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).bali2(row)
      n += 1
    end
    return total
  end

  def total_bale2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).bale2(row)
      n += 1
    end
    return total
  end

  def total_bals2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).bals2(row)
      n += 1
    end
    return total
  end

  def total_rho4 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).rho4(row, new_order)
      n += 1
    end
    return total
  end

  def total_rho5 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).rho5(row, new_order)
      n += 1
    end
    return total
  end

  def total_rho6 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      total += Testtwo.find(n).rho6(row, new_order)
      n += 1
    end
    return total
  end

  def alper2 new_order
    total = 0
    n = 1
    new_order.split(',').each do |row|
      bali2 = Testtwo.find(n).bali2(row)
      bale2 = Testtwo.find(n).bale2(row)
      bals2 = Testtwo.find(n).bals2(row)
      total += ( bali2 < 0 ) ? bali2 : 0
      total += ( bale2 < 0 ) ? bale2 : 0
      total += ( bals2 < 0 ) ? bals2 : 0
      n += 1
    end
    final = ((-total) * 100) / dif2(new_order)
    return final
  end

  # rating methods
  def dif_rating percent
    rate = "Excellent" if percent <= 30
    rate = "Very Good" if percent >= 31 and percent <= 40
    rate = "Good" if percent >= 41 and percent <= 50
    rate = "Average" if percent >= 51 and percent <= 60
    rate = "Poor" if percent >= 61 and percent <= 70
    rate = "Very Poor" if percent >= 71 and percent <= 80
    rate = "Bad" if percent > 81
    return rate
  end

  def dim_rating percent
    rate = "Excellent" if percent <= 7
    rate = "Very Good" if percent >= 8 and percent <= 14
    rate = "Good" if percent >= 15 and percent <= 21
    rate = "Average" if percent >= 22 and percent <= 28
    rate = "Poor" if percent >= 29 and percent <= 35
    rate = "Very Poor" if percent >= 36 and percent <= 42
    rate = "Bad" if percent > 43
    return rate
  end
end