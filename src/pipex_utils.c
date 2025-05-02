/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pipex_utils.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hfilipe- <hfilipe-@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/27 15:37:37 by luigi             #+#    #+#             */
/*   Updated: 2025/05/02 10:28:33 by hfilipe-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/pipex.h"

void	free_str(char **str)
{
	int	i;

	i = 0;
	while (str[i])
		free (str[i++]);
	free (str);
}

char	*get_path(char *cmd, char **envp)
{
	char	**full_path;
	char	*half_path;
	char	*path;
	int		i;

	i = 0;
	if (!envp[i])
		return (NULL);
	while (envp[i] && ft_strnstr(envp[i], "PATH=", 5) == 0)
		i++;
	if (!envp[i])
		return (NULL);
	full_path = ft_split(envp[i] + 5, ':');
	i = 0;
	while (full_path[i])
	{
		half_path = ft_strjoin(full_path[i], "/");
		path = ft_strjoin(half_path, cmd);
		free(half_path);
		if (access(path, F_OK | X_OK) == 0)
			return (free_str(full_path), path);
		free(path);
		i++;
	}
	return (free_str(full_path), NULL);
}

void	execute(char *av, char **envp, int *fd)
{
	char	**cmd;
	char	*path;

	cmd = ft_split(av, ' ');
	path = get_path(cmd[0], envp);
	if (!path && (!envp || !envp[0]))
	{
		free_str(cmd);
		ft_putstr_fd("-bash: ", 2);
		ft_putstr_fd(av, 2);
		ft_putstr_fd(": No such file or directory\n", 2);
		close(fd[0]);
		close(fd[1]);
		exit(127);
	}
	if (!path && envp)
		path = av;
	if (execve(path, cmd, envp) == -1)
	{
		free_str(cmd);
		close(fd[0]);
		close(fd[1]);
		exit(1);
	}
}
