<<<<<<<
=======
#define LENGTH(x)               (sizeof(x) / sizeof(x[0]))
#define CLEANMASK(mask)         (mask & (MODKEY|GDK_SHIFT_MASK))

<<<<<<<
enum { AtomFind, AtomSearch, AtomGo, AtomUri, AtomLast };
=======
static char *certdir        = "~/.surf/certificates/";
static char *cachedir       = "~/.surf/cache/";
static char *cookiefile     = "~/.surf/cookies.txt";
static char *searchurl      = "duckduckgo.com/?q=%s";
>>>>>>>
<<<<<<<
=======
#define LENGTH(x)               (sizeof(x) / sizeof(x[0]))
#define CLEANMASK(mask)         (mask & (MODKEY|GDK_SHIFT_MASK))

enum { AtomFind, AtomSearch, AtomGo, AtomUri, AtomLast };
>>>>>>>

enum {
	OnDoc   = WEBKIT_HIT_TEST_RESULT_CONTEXT_DOCUMENT,
>>>>>>>
<<<<<<<
=======
static void togglecookiepolicy(Client *c, const Arg *a);
static void toggleinspector(Client *c, const Arg *a);
static void find(Client *c, const Arg *a);
static void search(Client *c, const Arg *a);

/* Buttons */
static void clicknavigate(Client *c, const Arg *a, WebKitHitTestResult *h);
>>>>>>>
<<<<<<<
=======

	/* atoms */
	atoms[AtomFind] = XInternAtom(dpy, "_SURF_FIND", False);
	atoms[AtomSearch] = XInternAtom(dpy, "_SURF_SEARCH", False);
	atoms[AtomGo] = XInternAtom(dpy, "_SURF_GO", False);
	atoms[AtomUri] = XInternAtom(dpy, "_SURF_URI", False);

>>>>>>>
<<<<<<<
=======
	g_free(url);
}

void
search(Client *c, const Arg *a)
{
	Arg arg;
	char *url;

	url = g_strdup_printf(searchurl, a->v);
	arg.v = url;
	loaduri(c, &arg);

	g_free(url);
}

<<<<<<<
=======
#define SEARCH() { \
        .v = (const char *[]){ "/bin/sh", "-c", \
             "xprop -id $1 -f $2 8s -set $2 \"" \
             "$(dmenu -p Search: -w $1 < /dev/null)\"", \
             "surf-search", winid, "_SURF_SEARCH", NULL \
        } \
}

/* DOWNLOAD(URI, referer) */
#define DOWNLOAD(u, r) { \
        .v = (const char *[]){ "st", "-e", "/bin/sh", "-c",\
>>>>>>>
<<<<<<<
=======
	g_free(url);
}

void
search(Client *c, const Arg *a)
{
	Arg arg;
	char *url;

	url = g_strdup_printf(searchurl, a->v);
	arg.v = url;
	loaduri(c, &arg);

	g_free(url);
}

>>>>>>>
const char *
geturi(Client *c)
{
>>>>>>>
<<<<<<<
=======
				find(c, NULL);
<<<<<<<
=======
	{ MODKEY,                GDK_KEY_g,      spawn,      SETPROP("_SURF_URI", "_SURF_GO", PROMPT_GO) },
	{ MODKEY,                GDK_KEY_f,      spawn,      SETPROP("_SURF_FIND", "_SURF_FIND", PROMPT_FIND) },
	{ MODKEY,                GDK_KEY_slash,  spawn,      SETPROP("_SURF_FIND", "_SURF_FIND", PROMPT_FIND) },
	{ MODKEY,                GDK_KEY_s,      spawn,      SEARCH() },
>>>>>>>

				return GDK_FILTER_REMOVE;
			} else if (ev->atom == atoms[AtomSearch]) {
				a.v = getatom(c, AtomSearch);
				search(c, &a);
<<<<<<<
=======
				find(c, NULL);

				return GDK_FILTER_REMOVE;
			} else if (ev->atom == atoms[AtomSearch]) {
				a.v = getatom(c, AtomSearch);
				search(c, &a);
>>>>>>>
			} else if (ev->atom == atoms[AtomGo]) {
				a.v = getatom(c, AtomGo);
				loaduri(c, &a);
>>>>>>>
