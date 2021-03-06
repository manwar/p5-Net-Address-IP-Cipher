use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    (MM->can('signature_target') ? (SIGN => 1) : ()),
    NAME             => 'Net::Address::IP::Cipher',
    AUTHOR           => q{Hugo Salgado <hsalgado@vulcano.cl>},
    VERSION_FROM     => 'lib/Net/Address/IP/Cipher.pm',
    ABSTRACT_FROM    => 'lib/Net/Address/IP/Cipher.pm',
    LICENSE          => 'Artistic_2_0',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        #'ABC'              => 1.6,
        #'Foo::Bar::Module' => 5.0401,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Net-Address-IP-Cipher-*' },

    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/huguei/Net-Address-IP-Cipher.git',
                web  => 'https://github.com/huguei/Net-Address-IP-Cipher',
            },
        },
    },
);
