
walker count_number_of_sports {

     has anchor sports_count =0;

     members = file.load_json(data_file)["members"];
    for member in members {
      if (member["hobby"] == "Sports") {
            sports_count=sports_count+1;
         }
     }
    with exit {
        std.out(sports_count);
         report sports_count;
    }
 }
