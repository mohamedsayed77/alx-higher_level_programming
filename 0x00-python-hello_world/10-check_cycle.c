#include <stdio.h>
#include <stdlib.h>
#include "lists.h"

/**
* check_cycle - a fucntion that check if list is cyclical
* @list: pointer to the list
* Return: 1 if cyclical, 0 if not
*/

int check_cycle(listint_t *list)
{
	listint_t *slow = list, *fast = list;

	while (fast && fast->next)
	{
		slow = slow->next;
		fast = fast->next->next;
		if (slow == fast)
			return (1);
	}
	return (0);
}
