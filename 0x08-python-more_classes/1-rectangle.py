#!/usr/bin/python3
"""Defining a class rectangle"""


class Rectangle:
    """representation  of a rectangle."""
    def __init__(self, width=0, height=0):
        """Initialiezes the rectangle"""
        self.height = height
        self.width = width

    @property
    def width(self):
        """getter for the private instance attribute width"""
        return self._width

    @width.setter
    def width(self, value):
        """setter for the private instance attribute width"""
        if type(value) is not int:
            raise TypeError("Width must be an integer")
        if value < 0:
            raise ValueError("width mus be >= 0")
        self.__width = value

    @property
    def height(self):
        """getter for the private instance attribute height"""
        return self.__height

    @height.setter
    def height(self, value):
        """Setter for the private attribute height"""
        if type(value) is not int:
            raise TypeError("Height must be an integer")
        if value < 0:
            raise ValueError("Height must be >= 0")
        self.__height = value
