/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dydado13 <dydado13@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/04 17:32:19 by dylmarti          #+#    #+#             */
/*   Updated: 2024/05/03 12:43:19 by dydado13         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	size_t	i;

	i = 0;
	while (i < n)
	{
		if (((char *)s)[i] == (char)c)
			return ((char *)s + i);
		i++;
	}
	return (0);
}
/*
int	main(void)
{
	char *src = "0x7ffe66eeea40";
	int size = 35;

	if (memchr(src, '\0', size) == ft_memchr(src, '\0', size))
	{
			printf("%s", "SUCCESS");
			return (0);
	}
	printf("%s", "FAILED");
	return (0);
}*/
