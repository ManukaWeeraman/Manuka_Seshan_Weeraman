walker count_number_of_Females_Sports_players {

     has anchor count =0;

     members = file.load_json(data_file)["members"];
    for member in members {
      if (member["gender"] == "Female") {
        if (member["Hobby"] == "Sports") {
            count= count+1;
         }
            
         }
     }
    with exit {
        std.out(count);
         report count;
    }
 }
