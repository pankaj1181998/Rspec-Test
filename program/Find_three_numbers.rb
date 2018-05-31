class Find_three_numbers
   
    def initialize(input_arr , expected_sum)
      @input_arr = input_arr
      @expected_sum = expected_sum                                       
      @solution = Array.new                              
    end


    def execute_proposed_algorithm                           
      
       helper_arr = @input_arr            #dont want input_arr to change
       helper_arr.sort  

       for i in 0..helper_arr.size - 2
         l = i + 1
         r = helper_arr.size - 1
         while l < r            
             if helper_arr[i] + helper_arr[l] + helper_arr[r] == @expected_sum
               @solution <<  helper_arr[i] << helper_arr[l] << helper_arr[r] 
               @flag = 1
               break
             elsif helper_arr[i] + helper_arr[l] + helper_arr[r] < @expected_sum
               l += 1
             else
               r -= 1  
             end
         end
       end
       return @solution if is_ansr_calculated?          
       @solution << -1                         # -1 implies no solution 
       @solution
    end


    def get_result                                         
      return @solution if is_ansr_calculated?
      execute_proposed_algorithm
    end

    def is_ansr_calculated?
      return false if @solution.empty?
      return true if @solution.size == 3 || ( @solution.size == 1 && @solution[0]==-1)
      raise "internal error"  #no other case as per proposed solution
    end

    private :is_ansr_calculated?

end 




