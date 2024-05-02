/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dydado13 <dydado13@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/04 18:42:23 by dylmarti          #+#    #+#             */
/*   Updated: 2024/05/02 20:21:54 by dydado13         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/libft.h"

int	ft_memcmp(const void *s1, const void *s2, size_t n)
{
	char	*s3;
	char	*s4;
	int		i;

	i = 0;
	if (n == 0)
		return (0);
	s3 = (char *)s1;
	s4 = (char *)s2;
	while (s3[i] == s4[i] && n > 1)
	{
		i++;
		n--;
	}
	return ((unsigned char)s3[i] - (unsigned char)s4[i]);
}
/*
int	main(void)
{
	printf("%i\n", memcmp("bonjour", "boojour", 5));
	printf("%i", memcmp("bonjour", "boojour", 5));
	return (0);
}*/
