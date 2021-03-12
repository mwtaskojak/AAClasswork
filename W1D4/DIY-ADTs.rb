Exercise 1 - Stack
class Stack 
    attr_reader :ivar_array

    def initialize 
        @ivar_array = []
    end 

    def push(el)
        ivar_array.push(el)
        el
    end 

    def pop 
        ivar_array.pop
    end 
    
    def peek
        ivar_array.last
    end 

end 