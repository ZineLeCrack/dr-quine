/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Colleen.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: romain <romain@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/15 09:25:46 by romain            #+#    #+#             */
/*   Updated: 2025/10/15 11:23:09 by romain           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <fcntl.h>

void	read_file(int fd)
{
	ssize_t	bytes_read;
	char	c[1024];

	while ((bytes_read = read(fd, c, 1024))) // read the file
		write(1, c, bytes_read);
}

int	main(void)
{
	/* main function */
	int	fd;

	fd = open("Colleen.c", O_RDONLY); // open the file
	if (fd == -1)
		return (1);
	// read the file
	read_file(fd);
	close(fd);
	return (0);
}

// end
