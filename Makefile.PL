# $Id: Makefile.PL,v 1.1 2004/10/27 13:41:40 rousse Exp $

use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'         => 'Dict::Lexed',
    'VERSION_FROM' => 'lib/Dict/Lexed.pm',
    'AUTHOR'       => 'Guillaume Rousse',
    'PREREQ_PM'    => {
	'IPC::Open2' => 0,
	'IO::Handle' => 0
    }
);
