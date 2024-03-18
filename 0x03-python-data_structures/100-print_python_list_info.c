#include <python3.10/Python.h>

/**
 * print_python_list_info - a function that print basic info about
 * python list
 * @p: pointer to the python object
*/

void print_python_list_info(PyObject *p)
{
	int size, alloc, i;
	PyObject *obj;

	size = Py_SIZE(p);
	alloc = ((PyListObject *)p)->allocated;

	printf("[*] size of the python list = %d\n", size);
	printf("[*] allocated = %d\n", alloc);

	for (i = 0; i < size; i++)
	{
		print("Element %d: ", i);
		obj = PyList_GetItem(p, i);
		printf("%s\n", Py_TYPE(obj)->tp_name);
	}
}
