/******************************************************************************
 *
 * $Id: popen.h,v 1.3 2004/12/25 23:17:44 opensides Exp $
 *
 ******************************************************************************/

FILE *spopen (const char *);
int spclose (FILE *);
RETSIGTYPE popen_timeout_alarm_handler (int);

extern unsigned int timeout_interval;
pid_t *childpid;
int *child_stderr_array;
FILE *child_process;
FILE *child_stderr;
