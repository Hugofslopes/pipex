/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pipex.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hfilipe- <hfilipe-@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/27 15:38:06 by luigi             #+#    #+#             */
/*   Updated: 2025/01/05 18:15:44 by hfilipe-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "pipex.h"


void	child(char **av, int *fd, char **envp)
{
	int	fd_op;

	close(fd[0]);
	fd_op = open(av[1], O_RDONLY, 0777);
	if (fd_op == -1)
	{
		perror(av[1]);
		close(fd[0]);
		close(fd[1]);
		exit (1);
	}
	dup2(fd[1], STDOUT_FILENO);
	dup2(fd_op, STDIN_FILENO);
	execute(av[2], envp, fd);
}

void	parent(char **av, int *fd, char **envp)
{
	int	fd_op;

	close(fd[1]);
	fd_op = open(av[4], O_WRONLY | O_CREAT | O_TRUNC, 0777);
	if (fd_op == -1)
	{
		perror(av[4]);
		close(fd[0]);
		close(fd[1]);
		exit (1);
	}
	dup2(fd[0], STDIN_FILENO);
	dup2(fd_op, STDOUT_FILENO);
	execute(av[3], envp, fd);
}

int	main(int ac, char **av, char **envp)
{
	int		fd[2];
	pid_t	pid;

	if (ac == 5)
	{
		pipe(fd);
		if (pipe(fd) == -1)
			perror("pipe");
		pid = fork();
		if (pid == -1)
		{
			perror("fork");
			close(fd[0]);
			close(fd[1]);
		}
		else if (pid == 0)
			child(av, fd, envp);
		parent(av, fd, envp);
	}
	else
	{
		ft_putstr_fd("Invalid Input! Try ./pipex file2 cmd1 cmd2 file2\n", 2);
		exit (128);
	}
	return (1);
}


