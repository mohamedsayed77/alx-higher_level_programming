#include "lists.h"

/**
 * is_palindrom - a function that recursive palind or not
 * @head: pointer to the head of linked list
 * Return: 1 if is palindrome, otherwise return 0
*/

int is_palindrome(listint_t **head)
{
	if (head == NULL || *head == NULL)
		return (1);
	return (aux_palind(head, *head));
}

/*
* aux_palind - auxiliary function for is_palindrom
* @head: pointer to the head of linked list
* @end: pointer to the end of linked list
* Return: 1 if is palindrome, otherwise return 0
*/

int aux_palind(listint_t **head, listint_t *end)
{
	if (end == NULL)
		return (1);
	if (aux_palind(head, end->next) && (*head)->n == end->n)
	{
		(*head) = (*head)->next;
		return (1);
	}
	return (0);
}
