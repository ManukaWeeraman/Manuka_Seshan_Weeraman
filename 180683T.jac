 walker no_of_Baby_Boomers {

   has anchor count =0;

    root: take-->node::family_root;
    family_root: take-->node::person;
     person {
            here::get_age;
          if (here.age>59){
             if(here.age<77){
                     count+=1;
                    }
            }
        }
  with exit {
              std.out(count);
               report count;
     }
 }
