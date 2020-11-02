###############################################################################
## OCSINVENTORY-NG
## Copyleft Léa DROGUET 2020
## Web : http://www.ocsinventory-ng.org
##
## This code is open source and may be copied and modified as long as the source
## code is always made freely available.
## Please refer to the General Public Licence http://www.gnu.org/ or Licence.txt**
################################################################################

package Ocsinventory::Agent::Modules::Example;


sub new {
    my $name="example";   #Set the name of your module here
    

    my (undef,$context) = @_;
    my $self = {};

    #Create a special logger for the module
    $self->{logger} = new Ocsinventory::Logger ({
        config => $context->{config}
    });

    $self->{logger}->{header}="[$name]";

    $self->{context}=$context;

    $self->{structure}= {
        name => $name,
        start_handler => $name."_start_handler",    #or undef if don't use this hook 
        prolog_writer => $name."_prolog_writer",    #or undef if don't use this hook  
        prolog_reader => $name."_prolog_reader",    #or undef if don't use this hook  
        inventory_handler => $name."_inventory_handler",    #or undef if don't use this hook 
        end_handler => $name."_end_handler"    #or undef if don't use this hook 
    };
 
    bless $self;
}



######### Hook methods ############

sub example_start_handler {     #Use this hook to test prerequisites needed by module and disble it if needed
    my $self = shift;
    my $logger = $self->{logger};
    
    $logger->debug("Yeah you are in example_start_handler :)");
    my $prerequisites = 1 ;

    if ( $prerequisites == 0 ) { 
        $self->{disabled} = 1; #Use this to disable the module
        $logger->debug("Humm my prerequisites are not OK...disabling module :( :( ");
    }
}


sub example_prolog_writer {    #Use this hook to add information the prolog XML
    my $self = shift;
    my $logger = $self->{logger};
    
    $logger->debug("Yeah you are in example_prolog_writer :)");

}


sub example_prolog_reader {    #Use this hook to read the answer from OCS server
    my $self = shift;
    my $logger = $self->{logger};
    
    $logger->debug("Yeah you are in example_prolog_reader :)");

}


sub example_inventory_handler {        #Use this hook to add or modify entries in the inventory XML
    my $self = shift;
    my $logger = $self->{logger};
    my $common = $self->{context}->{common};

    
    my $col1 = 42;
    my $col2 = "some info";

     push @{$common->{xmltags}->{EXAMPLE}},
     {
         COLUMN_1  => [$col1],
         COLUMN_2  => [$col2],
     };
    
    $logger->debug("Yeah you are in example_inventory_handler :)");

}


sub example_end_handler { #Use this hook to add treatments before the end of agent launch
    my $self = shift;
    my $logger = $self->{logger};
    
    $logger->debug("Yeah you are in example_end_handler :)");

}

1;
