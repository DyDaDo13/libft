/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dydado13 <dydado13@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/02 14:41:09 by dylmarti          #+#    #+#             */
/*   Updated: 2024/05/02 20:21:54 by dydado13         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/libft.h"

size_t	ft_strlen(const char *s)
{
	int	j;

	j = 0;
	while (s[j])
		j++;
	return (j);
}
/*
#include <stdio.h>

int main(void) {
    const char *str = "Hello, World!";
    
    // Utilisation de la fonction strlen pour calculer la longueur de la chaîne
    size_t length = strlen(str);

    printf("La longueur de la chaîne est : %zu\n", length);

    return 0;
}
*/
