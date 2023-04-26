
walker count_number_of_mechanical_engineers {

     has anchor count =0;

     members = file.load_json("data_file")["members"];
    for member in members {
      if (member["profession"] == "Mechanical Engineer") {
            male_count=male_count+1;
         }
     }
    with exit {
        std.out(count);
         report count;
    }
 }
