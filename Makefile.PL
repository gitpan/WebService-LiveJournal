
# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.008.
use strict;
use warnings;

use 5.010000;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Interface to the LiveJournal API",
  "AUTHOR" => "Graham Ollis <plicease\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "WebService-LiveJournal",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "WebService::LiveJournal",
  "PREREQ_PM" => {
    "Digest::MD5" => 0,
    "Exporter" => 0,
    "HTTP::Cookies" => 0,
    "RPC::XML" => 0,
    "RPC::XML::Client" => 0,
    "RPC::XML::ParserFactory" => 0,
    "base" => 0,
    "overload" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => 0,
    "Time::HiRes" => 0
  },
  "VERSION" => "0.07",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Digest::MD5" => 0,
  "Exporter" => 0,
  "HTTP::Cookies" => 0,
  "RPC::XML" => 0,
  "RPC::XML::Client" => 0,
  "RPC::XML::ParserFactory" => 0,
  "Test::More" => 0,
  "Time::HiRes" => 0,
  "base" => 0,
  "overload" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



