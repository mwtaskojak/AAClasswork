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

# EXERCISE 2
class Queue
    attr_reader :enq_array
    def initialize
        @enq_array = []
    end 
    
    def enqueue(el)
        enq_array.push(el)
    end 

    def dequeue
        enq_array.shift
    end 

    def peek
        enq_array.first
    end 

end 

# EXERCISE 3