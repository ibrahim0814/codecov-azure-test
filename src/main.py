from adder.adder import Adder
from subtractor.subtractor import Subtractor


def main():
    x = 2
    y = 3
    sum = Adder().add(x,y)
    diff = Subtractor().subtract(x,y)
    product = Adder().multiply(x,y)
    quotient = Subtractor().divide(x,y)
    fraction = Subtractor().fractionate(x)
    print("Given: {} and {}. The sum: {}. The difference: {}. The product: {}. The quotient: {}. The fraction: {}").format(x, y, sum, diff, product, quotient, fraction)


if __name__ == "__main__":
   main() 
    
