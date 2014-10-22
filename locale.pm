package PerlIO::locale;

use 5.008;
use strict;
use DynaLoader;
use PerlIO::encoding;
our @ISA = qw(DynaLoader);
our $VERSION = '0.01';

bootstrap PerlIO::locale;

1;

__END__

=head1 NAME

PerlIO::locale - PerlIO layer to use the encoding of the current locale

=head1 SYNOPSIS

    use PerlIO::locale;
    open my $filehandle, '<:locale', $filename or die $!;

=head1 DESCRIPTION

This is mostly a per-filehandle version of the C<open> pragma, when
used under the form

    use open ':locale';

The encoding for the opened file will be set to the encoding corresponding
to the locale currently in effect, if perl can guess it.

=head1 AUTHOR

Rafael Garcia-Suarez <rgarciasuarez@mandrakesoft.com>

=head1 SEE ALSO

L<open>.

=cut
