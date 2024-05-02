/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dydado13 <dydado13@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/19 17:17:19 by dydado13          #+#    #+#             */
/*   Updated: 2024/05/02 20:21:54 by dydado13         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../inc/libft.h"

int	ft_strcmp(char *str, char *to_find)
{
	int	i;

	i = 0;
	while ((str[i] || to_find[i]) && (str[i] == to_find[i]))
		i++;
	return (str[i] - to_find[i]);
}