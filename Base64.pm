package CGI::Session::Serialize::Base64;

require 5.005_62;
use strict;
use warnings;

require Exporter;
use AutoLoader qw(AUTOLOAD);

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use CGI::Session::Serialize::Base64 ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	
);
our $VERSION = '0.01';


# Preloaded methods go here.

# Autoload methods go after =cut, and are processed by the autosplit program.

1;
__END__
# Below is stub documentation for your module. You better edit it!

=head1 NAME

CGI::Session::Serialize::Base64 - serializer for CGI::Session

=head1 DESCRIPTION

This library is used by CGI::Session driver to serialize session data before storing it in disk.
It uses base64 encoding to obfuscate the data to deter casual browsers.

=head1 METHODS

=over 4

=item freeze()

receives two arguments. First is the CGI::Session driver object, the second is the data to be
stored passed as a reference to a hash. Should return true to indicate success, undef otherwise,
passing the error message with as much details as possible to $self->error()

=item thaw()

receives two arguments. First being CGI::Session driver object, the second is the string
to be deserialized. Should return deserialized data structure to indicate successs. undef otherwise,
passing the error message with as much details as possible to $self->error().

=back

=head1 WARNING

If you want to be able to store objects, consider using L<CGI::Session::Serialize::Storable> or
L<CGI::Session::Serialize::FreezeThaw> instead.

=head1 COPYRIGHT

Copyright (C) 2004 Matthew Studley. All rights reserved.

This library is free software. It can be distributed under the same terms as Perl itself.

=head1 AUTHOR

Matthew Studley <mjfs@cpan.org>

All bug reports should be directed to Matthew Studley <mjfs@cpan.org>.

=head1 SEE ALSO

=over 4

=item *

L<CGI::Session|CGI::Session> - CGI::Session manual

=item *

L<Apache::Session|Apache::Session> - another fine alternative to CGI::Session

=back

=cut

