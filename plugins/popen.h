/******************************************************************************
 *
 * $Id: popen.h,v 1.4 2005/05/01 20:12:03 seanius Exp $
 *
 ******************************************************************************/

FILE *spopen (const char *);
int spclose (FILE *);
RETSIGTYPE popen_timeout_alarm_handler (int);

extern unsigned int timeout_interval;
pid_t *childpid=NULL;
int *child_stderr_array=NULL;
FILE *child_process=NULL;
FILE *child_stderr=NULL;
