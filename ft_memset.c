/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dydado13 <dydado13@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/02 14:50:45 by dylmarti          #+#    #+#             */
/*   Updated: 2024/04/26 08:30:26 by dydado13         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memset(void *s, int c, size_t n)
{
	unsigned char	*str;
	size_t			i;

	str = (unsigned char *)s;
	i = 0;
	if (n == 0)
		return (str);
	while (i < n)
	{
		str[i] = (unsigned char)c;
		i++;
	}
	return (str);
}
/*
#include <stdio.h>

int main(void) {
    char buffer[] = "bonjour"; // Créez un tableau de 10 caractères

    printf("Avant memset : buffer = \"%s\"\n", buffer);

    ft_memset(buffer, 1, sizeof(buffer));

    printf("Après memset : buffer = \"%s\"\n", buffer);

    return 0;
}
*/
