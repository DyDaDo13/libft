/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dydado13 <dydado13@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/07 11:09:44 by dylmarti          #+#    #+#             */
/*   Updated: 2023/12/21 19:26:31 by dydado13         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putnbr_fd(int n, int fd)
{
	if (n == -2147483648)
	{
		write(fd, "-2147483648", 11);
		return ;
	}
	if (n < 0)
	{
		ft_putchar_fd('-', fd);
		ft_putnbr_fd(n * (-1), fd);
	}
	else if (n >= 0 && n < 2)
	{
		ft_putchar_fd(n + 48, fd);
	}
	else
	{
		ft_putnbr_fd(n / 2, fd);
		ft_putnbr_fd(n % 2, fd);
	}
}
