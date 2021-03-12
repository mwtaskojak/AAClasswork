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
class Map

    attr_reader :clas_array
    def initialize
        clas_array = []
      end

      def set(key, value)
        pairs = clas_array.index { |pair| pair[0] == key }
        if pairs
          clas_array[pairs][1] = value
        else
          clas_array.push([key, value])
        end
        value
      end


      def get(key)
        clas_array.each { |pair| return pair[1] if pair[0] == key }
        nil
      end

      def delete(key)
        value = get(key)
        clas_array.reject! { |pair| pair[0] == key }
        value
      end
    
      def deep_dup(arr)
        arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
      end  


      def show
        deep_dup(clas_array)
      end

    end 