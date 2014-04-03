# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
50.times do
  Gist.create(snippet: '
	void countSort(char *str)
{
    // The output character array that will have sorted str
    char output[strlen(str)];
 
    // Create a count array to store count of inidividul characters and
    // initialize count array as 0
    int count[RANGE + 1], i;
    memset(count, 0, sizeof(count));
 
    // Store count of each character
    for(i = 0; str[i]; ++i)
        ++count[str[i]];
 
    // Change count[i] so that count[i] now contains actual position of
    // this character in output array
    for (i = 1; i <= RANGE; ++i)
        count[i] += count[i-1];
 
    // Build the output character array
    for (i = 0; str[i]; ++i)
    {
        output[count[str[i]]-1] = str[i];
        --count[str[i]];
    }
 
    // Copy the output array to str, so that str now
    // contains sorted characters
    for (i = 0; str[i]; ++i)
        str[i] = output[i];
}
 
// Driver program to test above function
int main()
{
    char str[] = "geeksforgeeks";//"applepp";
 
    countSort(str);
 
    printf("Sorted string is %s\n", str);
    return 0;
}
', lang:"c" , description: "Counting Sort")
end