#!/usr/bin/python3
"""Square module."""


class Square:
    """Defines a square."""
    def __init__(self, size=0):
        """Constructor.

        Args:
            size: length of a side of the square.
        """
        self.__size = size

    @property
    def size(self):
        """property for the length of a side of this square.
        raises:
            TypeError: If size is not an integer.
            ValueEroor: If size is less than 0.
            """
        return self.__size

    @size.setter
    def size(self, value):
        if not isinstance(value, int):
            raise TypeError('size must be an integer')
        if value < 0:
            raise ValueError('size must be >= 0')
        self.__size = value

    def area(self):
        """Area of this square.
        Returns:
            The area of this square.
        """
        return self.__size ** 2

    def my_print(self):
        """Prints this square."""
        if self.__size == 0:
            print("")
            return
        [print("") for i in range(0, self.__position[1])]
        for i in range(0, self.__size):
            [print(" ", end="") for j in range(0, self.__position[0])]
            [print("#", end="") for k in range(0, self.size)]
            print("")
