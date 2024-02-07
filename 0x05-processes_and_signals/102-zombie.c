/*
 * File: 102-zombie.c
 * Auth: Brennan D Baraban
 */

#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

/**
 * infinite_while - function is used to create a loop that
 * continues indefinitely until an external event, such as a
 * signal or a specific condition, causes it to break.
 * Runs an infinite while loop.
 *
 * Return: Always 0.
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - program that creates five child processes using the fork() system
 * call.Each child process exits immediately, while the parent process
 * continues creating new child processes until it has created five
 * in total. After creating the child processes, the parent process calls
 * the infinite_while() function, which runs an infinite loop.
 * Creates five zombie processes.
 * a "zombie" process (a process that has exited but its exit
 * status has not yet been collected by its parent)
 *
 * Return: Always 0.
 */
int main(void)
{
	pid_t pid;
	char count = 0;

	while (count < 5)
	{
		pid = fork();
		if (pid > 0)
		{
			printf("Zombie process created, PID: %d\n", pid);
			sleep(1);
			count++;
		}
		else
			exit(0);
	}

	infinite_while();

	return (EXIT_SUCCESS);
}
