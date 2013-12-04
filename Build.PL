use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Net::OBEX::FTP',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/Net/OBEX/FTP.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Carp'                        => 1.04,
        'Net::OBEX'                   => 0.002,
        'XML::OBEXFTP::FolderListing' => 0.002,
        'Class::Data::Accessor'       => 0.04001,
        'perl' => '5.006',
    },

    add_to_cleanup      => [ 'Net-OBEX-FTP-*' ],
    create_makefile_pl => 'traditional',
);
if ( $ENV{RELEASE_TESTING} ) {
    system('pod2text lib/Net/OBEX/FTP.pm > README');
}

$builder->create_build_script();
