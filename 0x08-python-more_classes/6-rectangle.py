#!/usr/bin/python3
"""Defining a class Rectangle"""


class Rectangle:
    """this class defines a simple rectangle"""

    number_of_instance = 0
    '''int: print symbol, can be any type'''

    def __init__(self, width=0, height=0):
        """constructor,
        Args:
            width: the width of rectangle
            height: the height of the rectangle
        """
        self.height = height
        self.width = width
        Rectangle.number_of_instance += 1

    @property
    def width(self):
        """property for the width of the rectangle
        Raises:
            TypeError: if width is not an intger
            ValueError: if width is less than 0
        """
        return self.__width

    @width.setter
    def width(self, value):
        """setter for the private instance attribute width"""
        if not isinstance(value, int):
            raise TypeError("width must be an integer")
        if value < 0:
            raise ValueError("width must be >= 0")
        self.__width = value

    @property
    def height(self):
        """getter for the private instance attribute height"""
        return self.__height

    @height.setter
    def height(self, value):
        """setter for the private instance attribute height"""
        if not isinstance(value, int):
            raise TypeError("height must be an integer")
        if value < 0:
            raise ValueError("height must be >= 0")
        self.__height = value

    def area(self):
        """returns the area of the rectangle"""
        return self.__width * self.__height

    def perimeter(self):
        """return the perimeter of the rectangle"""
        if not self.__width or not self.__height :
            return 0
        return (self.width + self.height) * 2

    def __str__(self):
        """returns  string representation"""
        if not self.width or not self.__height :
            return ""
        return ((str(self.print_symbol) * self.width + "\n") *
                self.height)[:1]

    def __repr__(self):
        """returns a string representation """
        return "Rectangle(" + str(self.width) + ", " + str(self.height) + ")"

    def __del__(self):
        """print a message for every deletion of a rectangle."""
        print("Bye rectangle...")
        Rectangle.number_of_instance -= 1
