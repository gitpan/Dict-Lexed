# $Id: Makefile.PL,v 1.3 2005/05/02 16:04:21 rousse Exp $

use ExtUtils::MakeMaker;
use ExtUtils::MakeMaker::Coverage;

WriteMakefile(
    NAME          => 'Dict::Lexed',
    VERSION_FROM  => 'lib/Dict/Lexed.pm',
    ABSTRACT_FROM => 'lib/Dict/Lexed.pm',
    AUTHOR        => 'Guillaume Rousse <grousse@cpan.org>',
    PREREQ_PM     => {
	'IPC::Open2' => 0,
	'IO::Handle' => 0
    },
    dist           => {
	COMPRESS => 'gzip -9f',
	SUFFIX   => 'gz',
    },
    clean          => {
	FILES => 'Dict-Lexed-*'
    },
);
