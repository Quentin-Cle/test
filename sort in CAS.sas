
data casuser.unsorted;
set &input_ds.;
     group = "A";       
run;

data casuser.sort3 (partition=(group) orderby=(timestamp));
    set casuser.unsorted ;
run;