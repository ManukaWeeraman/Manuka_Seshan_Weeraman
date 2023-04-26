walker count_number_of_adults {
    // returns the upcoming birthdays of the family
    has anchor counter =0;

    root: take-->node::family_root;
    family_root: take-->node::person;
    person {
            here::get_adult;
            if (here.adult=="true"){
                counter=counter+1;
            }
        }
    with exit {
               std.out(counter);
               report counter;
    }
}