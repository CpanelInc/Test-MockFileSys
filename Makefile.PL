use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'Test::MockFileSys',
    AUTHOR             => q{Todd Rinaldo <toddr@cpanel.net>},
    VERSION_FROM       => 'lib/Test/MockFileSys.pm',
    ABSTRACT_FROM      => 'lib/Test/MockFileSys.pm',
    LICENSE            => 'artistic_2',
    PL_FILES           => {},
    MIN_PERL_VERSION   => '5.010',
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => '0',
    },
    BUILD_REQUIRES => {
        'Test::More'                => '1.302133',
        'Test2::Bundle::Extended'   => '0',
        'Test2::Tools::Explain'     => '0',
        'Test2::Plugin::NoWarnings' => '0',
        'File::Slurper'             => 0,
    },
    PREREQ_PM => {
        'Overload::FileCheck' => '0.006',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'Test-MockFileSys-*' },
    META_MERGE => {
        resources => {
            license    => 'http://dev.perl.org/licenses/',
            bugtracker => 'https://github.com/cpanelinc/Test-MockFileSys/issues',
            repository => 'https://github.com/cpanelinc/Test-MockFileSys',
        }
    },
);
